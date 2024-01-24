class Listing < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, uniqueness: true
  #Ex:- :default =>''
end
