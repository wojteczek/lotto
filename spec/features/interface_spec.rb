require 'spec_helper'

describe 'Interface' do
  include Devise::TestHelpers

  it 'should show login form at main page for new user' do
    visit '/'
    page.should have_content('Log in')
  end
  it 'should show logout link to logged in user' do
    @user = Factory.create(:user)
    sign_in @user

    visit '/'
    page.should have_content('Log out')
  end
  it 'should redirect to page with numbers after login'
  it 'should redirect to page with numbers after register'
  it 'should show login page to unlogged users when visiting numbers page'
end
