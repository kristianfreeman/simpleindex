class Page < ApplicationRecord
  belongs_to :site
  validates :url, presence: true, uniqueness: true
end
