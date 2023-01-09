class CarryContentsController < ApplicationController
  def index
    @carry_content = current_user.picture
  end

  def new
    @carry_content= CarryContent.new
  end

  def create
    @picture = Picture.new(carry_content_params)
    @carry_content= CarryContent.new(carry_content_params)
    @carry_content.user_id = current_user.id
    @carry_content.save
    redirect_to contents_path
  end
  
  private

  def carry_content_params
    params.require(:carry_content).permit(:picture_id, :images)
  end
end
