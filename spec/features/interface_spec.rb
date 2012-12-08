require 'spec_helper'

describe 'Interface' do
  it 'should show login form at main page for new user' do
    visit '/'
    page.should have_content('Sign in')
  end
end
