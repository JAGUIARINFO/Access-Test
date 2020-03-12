class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:list]
  #before_action :authenticate_user!

  def index
  end

  def list
    @users = User.all

    respond_to do |format|
      format.html # list.html.erb
      format.json { render json: @users }
    end
  end

end
