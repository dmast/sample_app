require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "should have a signup page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => "Sign up")
    end

    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      response.should have_selector('title', :content => "About")

      click_link "Help"
      response.should have_selector('title', :content => "Help")

      click_link "Contact"
      response.should have_selector('title', :content => "Contact")

      click_link "Home"
      response.should have_selector('title', :content => "Home")

      click_link "Sign up now!"
      response.should have_selector('title', :content => "Sign up")
    end
  end
end

