class CarryContentsController < ApplicationController
  def index
    @carry_content = current_user.carry_contents
  end

  def new
  end

  def create
    @carry_content= CarryContent.new(carry_content_params)
    @carry_content.user_id = current_user.id
    @carry_content.save
    redirect_to new_text_path
  end
  
  private

  def carry_content_params
    params.require(:carry_content).permit(:picture_id, :text_id)
  end
end
