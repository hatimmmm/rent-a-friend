# frozen_string_literal: true

class ListingsComponent < ViewComponent::Base
    def initialize(listings:)
        @listings = listings
    end
end
