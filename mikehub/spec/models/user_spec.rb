require 'rails_helper'

 # describe User do
 #  it "should have many articles" do
 #    User.new
 #    should have_many(:articles)
 #  end

 #  describe "validations" do
 #    it "is valid when the user has a title" do
 #        user = User.new
 #        user.valid?
 #        expect(user.errors).to_not be_empty
 #    end

 #  end

 describe User do
    it "should have many teams" do
      user = User.reflect_on_association(:articles)
      user.macro.should == :has_many
    end
    it "should have many teams" do
      user = User.reflect_on_association(:edits)
      user.macro.should == :has_many
    end

end