# frozen_string_literal: true

class ReviewComponent < ViewComponent::Base
  with_collection_parameter :review

  def initialize(review:)
    @review = review
  end
end
