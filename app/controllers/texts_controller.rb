class TextsController < ApplicationController
  def new
    @carry_content = current_user.picture
    @text = Text.new
  
  end
  
  def create
    @text = Text.new(text_params)
    @text.save
    redirect_to contents_confirm_path
  end
  
  def complete 
      @text = current_user.texts.build(text_params)
      @text.save!
      carry_contents = current_user.carry_contents
      carry_contents.each do |carry_content|
      content = @text.contents.build
      content.picture_id = content.picture_id
      content.text = carry_content.text.id
      content.save
    end
    carry_contents.destroy_all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
    private

  def text_params
    params.require(:text).permit(:text)
  end
end
