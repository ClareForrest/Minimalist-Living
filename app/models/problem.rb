class Problem < ApplicationRecord
  belongs_to :user
  has_many :solutions, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 500 }
  validates :category, presence: true
end
