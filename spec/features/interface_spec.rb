require 'spec_helper'

describe 'Interface' do
  it 'should show login form at main page for new user' do
    visit '/'
  end
  it 'should allow to register new account'
  it 'should show logout link to logged in user'
  it 'should redirect to page with numbers after login'
  it 'should redirect to page with numbers after register'
  it 'should show login page to unlogged users when visiting numbers page'
end
