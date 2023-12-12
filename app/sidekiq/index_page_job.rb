require 'google/apis/indexing_v3'

class IndexPageJob
  include Sidekiq::Job
  sidekiq_options concurrency: 1

  def perform(id)
    credentials = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: File.open(
        Rails.root.join("config/google-cloud.json")
      ),
      scope: "https://www.googleapis.com/auth/indexing"
    )

    page = Page.find(id)

    index = Google::Apis::IndexingV3::IndexingService.new
    index.authorization = credentials
    index.publish_url_notification(
      Google::Apis::IndexingV3::UrlNotification.new(
        type: "URL_UPDATED",
        url: page.url
      )
    )

    page.indexed = true
    page.last_scanned = DateTime.now
    page.save
  end
end
