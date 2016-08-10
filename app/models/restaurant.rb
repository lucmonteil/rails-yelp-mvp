class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false, message: 'The restaurant must be one of these categories' }
  validates :address, :name, presence: true
end
