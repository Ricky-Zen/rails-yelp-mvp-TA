class Restaurant < ApplicationRecord
  validates :name, :phone_number, :address, :category, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }

  has_many :reviews, dependent: :destroy
end
