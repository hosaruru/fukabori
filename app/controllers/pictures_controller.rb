class PicturesController < ApplicationController
  def index
  end

  def new
    @picture = Picture.new
  end

  def create
    @content_pic = Content.new
    @item = Item.find(params[:id])  
    @genre = Genre.all
  end
  
  private
  
  def picture_params
    params.require(:picture).permit(:images)
  end
end
