class Listing < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  #Ex:- :default =>''

  def user
    User.find_by(id: self.user_id)
  end

  def requests
    Request.where(listing_id: self.id)
  end

  def reviews
    Review.where(listing_id: self.id)
  end
end
