# frozen_string_literal: true
class RequestComponent < ViewComponent::Base
  with_collection_parameter :request
  def initialize(request:)
    @request = request
  end
end
