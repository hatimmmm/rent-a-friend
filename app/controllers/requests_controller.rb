class RequestsController < ApplicationController
  before_action :set_request, only: :destroy

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @request.save

    redirect_to listing_path(@request.listing)

  end

  def destroy
    @request.destroy
    redirect_to dashboard_path
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:message, :listing_id)
  end
end
