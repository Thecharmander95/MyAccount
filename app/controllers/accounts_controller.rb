class AccountsController < ApplicationController
  def data
    @page_title = "Data | LionNav"
  end

  def personal
    @user = current_user
    @page_title = "Personal Info | LionNav"
  end
end
