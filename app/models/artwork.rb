class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_author_and_denomination,
  against: [ :title, :author, :denomination ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
