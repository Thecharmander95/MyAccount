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

  def lionnav_disable
    if user_signed_in?
      if current_user.role == "admin"
      else
        if Sitedisable.first.disable == "yes"
          redirect_to disabled_path
        else
        end
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
