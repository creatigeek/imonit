require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it 'should have the content "I\'m On It"' do
      visit '/static_pages/home'
      expect(page).to have_content("I'm On It")
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("I'm On It - Demo App | Home")
    end
  end

    describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("I'm On It - Demo App | Help")
    end
  end

    describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("I'm On It - Demo App | About Us")
    end
  end
end