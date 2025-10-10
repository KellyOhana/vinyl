class Vinyl < ApplicationRecord
  include GenerateCsv

  validates :band, presence: true
  validates :album, presence: true

end
