class ApplicationController < ActionController::Base
  protect_from_forgery
  def get_module_name
     @module_name = self.class.to_s.split("::").first
   end
end
