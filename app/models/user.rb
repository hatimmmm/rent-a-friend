class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
          has_many :listings, dependent: :destroy
          has_many :requests, dependent: :destroy
          validates :first_name, presence: true
          validates :last_name, presence: true
          validates :email, presence: true
          validates :bio, length: { maximum: 500}

          def full_name
            "#{first_name} #{last_name}"
          end

          def listings
            Listing.where(user_id: self.id)
          end

          def requests
            Request.where(user_id: self.id)
          end

          def reviews
            Review.where(user_id: self.id)
          end

          def average_rating
            if self.reviews.count > 0
              (self.reviews.sum(:rating) / self.reviews.count).round(2)
            else
              0
            end
          end


end
