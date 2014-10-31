class SayingsController < ApplicationController

  def index
    @sayings = Saying.all
  end

  def new
    @saying = Saying.new
  end

  def create
    @saying = Saying.new(sayings_params)
    @saying.save
    redirect_to sayings_path
  end

  private

  def sayings_params
    params.require(:saying).permit(:quote)
  end

end
