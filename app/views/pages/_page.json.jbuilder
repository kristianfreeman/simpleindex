json.extract! page, :id, :url, :last_scanned, :indexed, :site_id, :created_at, :updated_at
json.url page_url(page, format: :json)
