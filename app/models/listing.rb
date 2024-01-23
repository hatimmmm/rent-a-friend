class Listing < ApplicationRecord
  belongs_to :user
  has_many :requests
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, uniqueness: true
  validates :availability, default: true
end
