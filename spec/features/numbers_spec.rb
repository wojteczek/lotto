require 'spec_helper'

describe 'Numbers' do
  before :each do
    visit '/users/sign_up'

    fill_in 'user[email]', :with => 'user@example.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_button 'Sign up'

    visit '/'
  end

  it 'should show 6 number' do
    page.should have_content('show')
  end
  it 'should show numbers from range 1 to 49'
  it 'should show unique numbers'
end
