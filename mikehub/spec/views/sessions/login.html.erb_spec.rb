require 'rails_helper'

feature 'User can log in' do

 scenario "sees a button to log in" do
    visit "/sessions/login"

    page.assert_selector('p#login_button', :count => 1)
  end


end
