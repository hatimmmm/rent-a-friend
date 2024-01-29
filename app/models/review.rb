class Review < ApplicationRecord
    belongs_to :user
    belongs_to :listing
    validates :comment, presence: true
    validates :rating, presence: true
    validates :user_id, presence: true 
    validates :listing_id, presence: true

    def listing
        Listing.find_by(id: self.listing_id)
    end

    def customer
        User.find_by(id: self.user_id)
    end

    def user
        User.find_by(id: self.listing_id)
    end
end
