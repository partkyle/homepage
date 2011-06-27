class ResumesController < ApplicationController
  def index
  end

  def show
    @resume = Resume.find_by_name(params[:name])
  end

end
