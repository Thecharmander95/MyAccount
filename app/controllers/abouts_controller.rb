class AboutsController < ApplicationController
  before_action :lionnav_disable

  def index
    @page_title = "About | LionNav"
  end

  def credit
    @page_title = "Credits | LionNav"
  end

  def lionsocial
    @page_title = "About Lion Social | LionNav"
  end

  def moviemakers
    @page_title = "About Movie Makers | LionNav"
  end

  def railsforums
    @page_title = "About Rails Forums | LionNav"
  end
end
