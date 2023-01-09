class PicturesController < ApplicationController
  def index
  end

  def new
    @carry_content = CarryContent.new
    
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to contents_path
    else
      flash.now[:alret] = "ソフト名を入力してください"
      render :new
    end
  end
  
  private
  
  def picture_params
    params.require(:picture).permit(:images)
  end
end
