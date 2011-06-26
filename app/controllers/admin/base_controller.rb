module Admin
  class BaseController < ApplicationController
    http_basic_authenticate_with :name => "", :password => "admin"
  end
end
