class ResumesController < ApplicationController
  def index
  end

  def show
    @resume = Resume.find(params[:id])
  end

end
