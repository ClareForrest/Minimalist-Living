class Solution < ApplicationRecord
  belongs_to :problem
  belongs_to :user
  has_one_attached :image
  has_one_attached :document

  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 500 }
end
