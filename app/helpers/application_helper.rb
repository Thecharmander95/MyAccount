module ApplicationHelper
  def check_user
    @user = User.friendly.find(params[:id])
    if current_user.role == "admin"
    else
      if current_user == @user
      else
        redirect_to root_path, notice: "Your not that user"
      end
    end
  end

  def check_admin
    if current_user.role == "admin"
    else
      redirect_to root_path, notice: "You dont have permison."
    end
  end
end
