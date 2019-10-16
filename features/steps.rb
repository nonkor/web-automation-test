Given("an unregistered user on the home page") do
  @browser.goto Testing.root_url
  @page = HomePage.new(@browser)
  @page.navigate_to_sign_up
end

When("the user registers an account using an email address") do
  @page = SignUpPage.new(@browser)
  @page.sign_up(Settings.user)
end

Then("the account should be created") do
  @page = DashboardPage.new(@browser)
  expect(@page).to be_signed_in
end

Then("the user should be on the dashboard page") do
  @page = DashboardPage.new(@browser)
  expect(@page.header).to eq 'Choose your delivery slot'
end

Given("a registered user who used an email address") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the user signs into their account using an email address") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("the user is logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the user logs out from their account") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the user should be logged out") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the user should be on the home page") do
  pending # Write code here that turns the phrase above into concrete actions
end
