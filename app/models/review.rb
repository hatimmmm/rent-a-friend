class Review < ApplicationRecord
    belongs_to :user
    validates :content, presence: true
    validates :rating, presence: true

    def author
        User.find_by(id: self.user_id)
    end

end
