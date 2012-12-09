require 'spec_helper'
require 'interface_helper'

describe 'Numbers' do
  include InterfaceHelper

  before :each do
    sign_up_as_example_user
  end

  it 'should show 6 number' do
    page.should have_content('show')
  end
  it 'should show numbers from range 1 to 49'
  it 'should show unique numbers'
end
