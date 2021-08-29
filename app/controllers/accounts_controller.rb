class AccountsController < ApplicationController
  def data
  end

  def personal
    @user = current_user
  end
end
