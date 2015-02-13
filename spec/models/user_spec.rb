require 'rails_helper'

describe User, :type => :model do
  before(:each) do
    @user = FactoryGirl.build(:user)
  end

  it "should be valid from default factory" do
    expect(@user).to be_valid
  end

  it "should not be valid without a name" do
    @user.name = "     "
    expect(@user).not_to be_valid
  end

  it "should not be valid without an email" do
    @user.email = "     "
    expect(@user).not_to be_valid
  end

  it "should not be valid with a name longer than 50 characters" do
    @user.name = "a"*51
    expect(@user).not_to be_valid
  end

  it "should not be valid with an email longer than 255 characters" do
    @user.email = "a"*250+"@a.com"
    expect(@user).not_to be_valid
  end

  it "should be valid with user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn as email addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                       first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      expect(@user).to be_valid
    end
  end

  it "should be invalid with user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com as email addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      expect(@user).not_to be_valid
    end
  end

  it "should require email to be unique" do
    duplicate_user = FactoryGirl.build(:user)
    duplicate_user.email = @user.email.upcase
    @user.save
    expect(duplicate_user).not_to be_valid
  end

  it "should require password to have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    expect(@user).not_to be_valid
  end
end
