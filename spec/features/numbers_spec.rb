require 'spec_helper'
require 'interface_helper'

describe 'Numbers' do
  include InterfaceHelper

  before :each do
    sign_up_as_example_user
  end

  it 'should show numbers page to logged in user' do
    page.should have_content("Your lucky numbers are:")
  end

  it 'should show 6 numbers'
  it 'should show numbers from range 1 to 49'
  it 'should show unique numbers'
end
