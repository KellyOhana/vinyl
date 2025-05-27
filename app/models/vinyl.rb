class Vinyl < ApplicationRecord

  validates :band, presence: true
  validates :album, presence: true

end
