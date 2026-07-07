class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  CATEGORY = [ "chinese", "italian", "japanese", "french", "belgian" ]
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
