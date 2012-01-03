class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about_us
    @title = "About us"
  end

  def services
    @title = "Services"
  end

  def help
    @title = "Help"
  end

end
