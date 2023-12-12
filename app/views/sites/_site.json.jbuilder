json.extract! site, :id, :name, :sitemap_url, :created_at, :updated_at
json.url site_url(site, format: :json)
