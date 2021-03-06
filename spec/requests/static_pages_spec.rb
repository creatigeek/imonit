require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it 'should have the content "I\'m On It"' do
      visit root_path
      expect(page).to have_content("I'm On It")
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("I'm On It - Demo App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

    describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("I'm On It - Demo App | Help")
    end
  end

    describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("I'm On It - Demo App | About Us")
    end
  end
end