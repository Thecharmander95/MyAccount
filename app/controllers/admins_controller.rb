class AdminsController < ApplicationController
  before_action :check_admin

  def index
  end

  def users
    @users = User.all
  end
end
