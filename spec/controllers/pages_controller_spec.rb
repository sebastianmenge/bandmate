require 'spec_helper'

describe PagesController do

  describe "GET 'start'" do
    it "should be successful" do
      get 'start'
      response.should be_success
    end
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'agb'" do
    it "should be successful" do
      get 'agb'
      response.should be_success
    end
  end

  describe "GET 'password_reset'" do
    it "should be successful" do
      get 'password_reset'
      response.should be_success
    end
  end

end
