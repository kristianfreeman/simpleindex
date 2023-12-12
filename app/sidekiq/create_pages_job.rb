class CreatePagesJob
  include Sidekiq::Job

  def perform(id)
    site = Site.find(id)
    urls = site.get_urls
    urls.each do |url|
      p = Page.create(
        url: url,
        site: site
      )

      IndexPageJob.perform_async(p.id)
    end
  end
end
