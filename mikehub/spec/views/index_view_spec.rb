require 'rails_helper'

feature 'User visits index page' do
  before :each do
    @user = User.create!(first_name: "Test", last_name: "Testerson", email: "test@dbc.com", img_url: "http://www.rainforest-alliance.org/sites/default/files/uploads/4/capybara-family_15762686447_f9f8a0684a_o.jpg", password: "password")

    10.times do
      Article.create!(title: Faker::App.name, subtitle: Faker::Company.catch_phrase, content: Faker::Lorem.paragraphs(rand(6..20)).join(", "))
    end

  end

  scenario "sees 'login' link if not signed in" do
    visit root_path
    expect(page).to have_link("Log in")
  end

  scenario "sees 'register' link if not signed in" do
    visit root_path
    expect(page).to have_link("Register")
  end

  scenario "sees 'home' link" do
    visit root_path
    expect(page).to have_link("Home")
  end

  scenario "sees a list of 8 featured articles" do
    visit root_path
    page.assert_selector('li.featured-list', count: 8)
  end

  scenario "sees a list of 5 recent articles" do
    visit root_path
    page.assert_selector('li.recent-list', count: 5)
  end
end
