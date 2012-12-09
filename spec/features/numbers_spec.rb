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

  def collect_numbers
    (1..6).map { |x| find(:id, "number#{x}").text.to_i }
  end

  it 'should show 6 numbers from range 1 to 49' do
    numbers = collect_numbers

    numbers.each do |x|
      x.should be <= 49
      x.should be >= 1
    end
  end

  it 'should show unique numbers' do
    numbers = collect_numbers
    numbers.uniq.length.should == 6
  end
end
