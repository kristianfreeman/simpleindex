class Site < ApplicationRecord
  def get_urls
    parser = SitemapParser.new(sitemap_url, {recurse: true})
    parser.to_a
  end
end
