class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5}
  validates :content, presence: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  # validates :name, uniqueness: true, presence: true
  # validates :address, presence: true
  # validates :phone_number, presence: true
end
