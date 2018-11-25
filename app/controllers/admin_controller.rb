class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "lahausrocks"

  def index
    session[:admin] = true
    redirect_to root_path
  end
end
