require 'spec_helper'

describe User do
   before(:each) do 
     @attr = { :name => "Example User", :email => "user@example.com" }
   end
   it "should create a new instance given valid attributes" do
      User.create!(@attr)
   end
   it "should require a name" do
     no_name_user = User.new(@attr.merge(:name => ""))
     no_name_user.should_not be_valid
   end 
end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

