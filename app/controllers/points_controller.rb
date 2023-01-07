class PointsController < ApplicationController
  def index
  end

  def new
    @point = Point.new
  end

  def show
    @point = Point.find_by(id: params[:id])
  end

  def create
    @point = Point.new(point_params)
    params[:point][:question] ? @point.question = params[:point][:question].join("") : false
    if @point.save
        flash[:notice] = "診断が完了しました"
        redirect_to point_path(@point.id)
    else
        redirect_to :action => "new"
    end
  end

private
  def point_params
      params.require(:point).permit(:id, question: [])
  end
end
