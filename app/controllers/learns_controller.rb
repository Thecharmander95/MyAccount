class LearnsController < ApplicationController
  def lionsocial
    @page_title = "Learn More Lion Social | LionNav"
  end

  def moviemakers
    @page_title = "Learn More Movie Makers | LionNav"
  end

  def railsforums
    @page_title = "Learn More Rails Forums | LionNav"
  end

  def index
    @page_title = "Learn More | LionNav"
  end
end
