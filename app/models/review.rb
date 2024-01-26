class Review < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    validates :user_id, presence: true, uniqueness: true
    validates :rating, presence: true

end
