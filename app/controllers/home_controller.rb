class HomeController < ApplicationController
  def index
    redirect_to :controller => 'resumes', :action => "show", :name => "default"
  end

end
