class Urlmap < ApplicationRecord
  validates :longUrl, presence: true,
  validates :shortUrl, presence: true
end
