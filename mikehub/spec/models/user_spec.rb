require 'rails_helper'


 describe User do
    it "should have many articles" do
      user = User.reflect_on_association(:articles)
      user.macro.should == :has_many
    end
    it "should have many edits" do
      user = User.reflect_on_association(:edits)
      user.macro.should == :has_many
    end

end