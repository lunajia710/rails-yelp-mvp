class Review < ApplicationRecord
  validates :rating, presence: true
  validates :content, presence: true
  # RATING = (0..5).to_a
  # validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true, in: 0..5 }
  belongs_to :restaurant
end
