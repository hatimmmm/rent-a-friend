class Request < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :message, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :listing_id }
  validates :listing_id, uniqueness: true, presence: true, uniqueness: { scope: :user_id }
end
