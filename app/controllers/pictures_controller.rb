class PicturesController < ApplicationController
  def index
  end

  def new
    @carry_content = CarryContent.new
    @base_pic = Picture.new
  end

  def create
    @post = Post.new(post_params)
    tag_list = params[:post][:tag_name].split(/[[:blank:]]/)
    @post.image.attach(params[:post][:image])
    @post.user_id = current_user.id
    if @post.save
      @post.save_posts(tag_list)
      redirect_to post_path(@post.id)
      flash[:notice] = ""
    else
      flash.now[:alret] = "*は必須です。"
      render:new
    end
  end
  
  private
  
  def picture_params
    params.require(:picture).permit(:images)
  end
end
