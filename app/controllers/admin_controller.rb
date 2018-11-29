class AdminController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASSWORD"]

  def index
    session[:admin] = true
    redirect_to root_path
  end
end
