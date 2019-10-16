class HomePage
  include Watirsome

  link :login, text: 'Log in'
  link :sign_up, text: 'Sign up'

  def navigate_to_sign_up
    @browser.goto Testing.root_url + 'signup'
  end
end
