require 'rails_helper'

describe "Article" do
  # let(:article) ( Article.new )

  describe "validations" do
    it "is valid when the article has a title" do
        article = Article.new
        article.valid?
        expect(article.errors).to_not be_empty
      end
      
    it "is valid when the article has content" do
      article = Article.new
      article.valid?
      expect(article.errors).to_not be_empty
    end

    it "is valid when the article has an author" do
      article = Article.new
      article.valid?
      expect(article.errors).to_not be_empty
    end
  end

    describe "#recent" do
      it "displays the 10 most recent games in descending order" do
      7.times{Article.new}
      expect(Article.recent.length).to eq 5
    end
  end

  
end