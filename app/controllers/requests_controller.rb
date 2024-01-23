class RequestsController < ApplicationController
  before_action :set_request, only: :destroy

  def new
    @request = request.new
  end

  def create
    @request = request.new(request_params)
    @request.save
  end

  def destroy
    @request.destroy
    redirect_to index_path(@request)
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end
end
