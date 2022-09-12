class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user, only: [:edit]

  def index
    @page_title = "All users Lion Nav"
    @users = User.all
    @users = User.by_newest
  end

  def destroy
    @user = User.friendly.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'User deleted.'
  end

  def show
    @user = User.friendly.find(params[:id])
    @posts = @user.posts
    @posts = Post.by_newest
    @page_title = "#{@user.username}'s profile Lion Nav"
  end

  def edit
    @user = User.friendly.find(params[:id])
    @page_title = "Edit #{@user.username}'s Lion Nav"
  end

  def update
    @user = User.friendly.find(params[:id])
    @user.avatar.attach(user_params[:avatar]) if user_params[:avatar].present?
    respond_to do |format|
      if @user.update(user_params)
        UserMailer.change(@user).deliver_now
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { render :index, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_user
      @user = User.friendly.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :body, :avatar, :role)
    end
 end
