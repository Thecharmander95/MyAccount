class ForumsController < ApplicationController
  before_action :lionnav_disable
  before_action :set_forum, only: %i[ show edit update destroy ]

  def index
    @forums = Forum.all.by_newest
    @page_title = "Forums | Rails Forums"
  end

  def show
  end

  def new
    @forum = current_user.forums.new
  end

  def create
    @forum = current_user.forums.new(forum_params)

    respond_to do |format|
      if @forum.save
        format.html { redirect_to @forum, notice: "Forum was successfully created." }
        format.json { render :show, status: :created, location: @forum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  def useranswers
    @forums = current_user.forums.all.by_newest
  end

  def destroy
    @forum.destroy
    respond_to do |format|
      format.html { redirect_to forum_url, notice: "Forum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum
      @forum = Forum.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def forum_params
      params.require(:forum).permit(:question, :title)
    end
end
