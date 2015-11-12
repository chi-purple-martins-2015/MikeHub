require 'rails_helper'

feature "Use creating an article" do
  scenario "when goes to new article" do
    visit '/articles/new'
    expect(page).to have_content("Title")
    end
end