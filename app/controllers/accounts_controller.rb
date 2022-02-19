class AccountsController < ApplicationController
  before_action :set_user

  def data
    @page_title = "Data | LionNav"
  end

  def personal
    @user = current_user
    @page_title = "Personal Info | LionNav"
  end

  private

    def set_user
      @user = current_user
    end
end
