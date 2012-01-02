require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about_us'" do
    it "should be successful" do
      get 'about_us'
      response.should be_success
    end
  end

  describe "GET 'services'" do
    it "should be successful" do
      get 'services'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  end

end
