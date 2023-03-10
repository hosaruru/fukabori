class ContentsController < ApplicationController
  def index
    @carry_content = current_user.picture
  end

  def new
    @content= Content.new
    pictures = @content.pictures.build
    pictures.options.build
  end

  def create
    content= Content.new(content_params)
    if content.valid?
      content.save!
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def confirm
  end
  
  private
  
  def carry_content_params
    params.require(:carry_content).permit(:picture_id, :images)
  end
  
  def content_params
    params.require(:content).permit(:title, :description, 
      pictures_attributes: [:text, :description,
        options_attributes: [:text]
      ]
    )
  end
end