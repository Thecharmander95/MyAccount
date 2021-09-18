class AboutsController < ApplicationController
  before_action :lionnav_disable
  def index
    @page_title = "About | LionNav"
  end
end
