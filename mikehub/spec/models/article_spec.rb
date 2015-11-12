require 'rails_helper'

describe "Article" do
  # let(:article) ( Article.new )

  describe "validations" do
    it "is valid when the article has a title" do
        article = Article.new
        article.valid?
        expect(article.errors).to_not be_empty
      end
      
    it "is valid when the article has a title" do
      article = Article.new
      article.valid?
      expect(article.errors).to_not be_empty
    end

  end
end