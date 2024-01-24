class RequestsController < ApplicationController
  before_action :set_request, only: :destroy

  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to request_path(@request) }
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "request/new", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
  end

  # request_params

  def destroy
    @request.destroy
    redirect_to index_path(@request)
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:message)
  end
end
