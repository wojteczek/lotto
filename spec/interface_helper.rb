module InterfaceHelper
  def sign_up_as_example_user
    visit '/users/sign_up'

    fill_in 'user[email]', :with => 'user@example.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_button 'Sign up'

    visit '/'
  end
end
