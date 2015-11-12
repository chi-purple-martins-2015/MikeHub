require 'rails_helper'

RSpec.describe PagesController, type: :controller do

    let!(:article) { Article.create!(title: "This is a stoic title", subtitle: "This is a fancy subtitle", content: "This is some delicious content.") }

  # describe "POST #search" do
  #   it "can search for a word in the title" do
  #     post :search, search_term: "stoic"
  #     expect(assigns{:title_matches}).to eq(article)
  #   end
  # end

end
