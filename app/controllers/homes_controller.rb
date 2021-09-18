class HomesController < ApplicationController
  before_action :lionnav_disable, only:[:index]
  def index
    if user_signed_in?
    else
      redirect_to user_session_path
    end
  end

  def disabled
  end
end
