require 'spec_helper'
require 'interface_helper'

describe 'Interface' do
  include InterfaceHelper

  it 'should show login form at main page for new user' do
    visit '/'
    page.should have_content('Sign in')
  end
  it 'should show logout link for logged in users' do
    sign_up_as_example_user
    page.should have_link('Log out')
  end
  it 'should show email of signed in user' do
    sign_up_as_example_user
    page.should have_content('user@example.com')
  end
end
