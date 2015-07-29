 require 'spec_helper'

 describe User do

  it 'has a valid factory' do
    FactoryGirl.create(:user).should be_valid
  end

  it 'is invalid without an email' do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it 'is invalid without a password' do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it 'is not accepted by default' do
    puts FactoryGirl.create(:user).accepted.should be false
  end

  it 'is accepted after it has been activated' do
    user = FactoryGirl.create(:user)
    user.activate
    user.accepted.should be true
  end
end
 