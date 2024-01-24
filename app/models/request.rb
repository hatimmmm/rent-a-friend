class Request < ApplicationRecord
  belongs_to :user, :listing 
  validates :message, presence: true
  validates :user_id, uniqueness: true
  validates :listing_id, uniqueness: true
end
