require 'rails_helper'


 describe User do
    it "should have many articles" do
      user = User.reflect_on_association(:articles)
      expect(user.macro).to eq(:has_many)
      # user.macro.should == :has_many
    end
    it "should have many edits" do
      user = User.reflect_on_association(:edits)
      # user.macro.should == :has_many
      expect(user.macro).to eq(:has_many)
    end

end

