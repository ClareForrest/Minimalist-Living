class Solution < ApplicationRecord
  belongs_to :problem
  belongs_to :user
  has_one_attached :image
  has_one_attached :document
end
