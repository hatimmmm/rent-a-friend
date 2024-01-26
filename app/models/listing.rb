class Listing < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  #Ex:- :default =>''
end
