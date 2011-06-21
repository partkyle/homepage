class ResumesController < ApplicationController
  def index
  end

  def show
    @resume = @resume.find(params[:id])
  end

end
