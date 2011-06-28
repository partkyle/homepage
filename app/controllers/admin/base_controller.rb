module Admin
  class BaseController < ApplicationController
    http_basic_authenticate_with :name => "", :password => "admin"
    before_filter :get_module_name
    
    def index
    end
  end
end
