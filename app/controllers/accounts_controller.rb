class AccountsController < ApplicationController
  before_action :set_user

  def data
    @page_title = "Data | LionNav"
  end

  def personal
    @user = current_user
    @page_title = "Personal Info | LionNav"
  end

  def lionsocail
    @user.posts.delete
    @user.room_messages.delete
    @user.messages.delete
    redirect_to data_path, notice: "All data has been cleared from Lion Socail"
  end

  def moviemakers
    @user.movies.delete
    redirect_to data_path, notice: "All data has been cleared from Movie Makers"
  end

  def railsforums
    @user.forums.delete
    redirect_to data_path, notice: "All data has been cleared from Rails Forums"
  end

  private

    def set_user
      @user = current_user
    end
end
