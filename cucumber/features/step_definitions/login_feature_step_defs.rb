Given(/^I access the homepage$/) do
    @driver = Watir::Browser.new :chrome
    @driver.goto 'https://www.bbc.co.uk'
end

And(/^I want a new account$/) do
    signin = @driver.link id: 'idcta-link'
    signin.exists?
    signin.click
end

And(/^I navigate to the sign up page$/) do
    register_now = @driver.link class: 'link link--primary'
    register_now.exists?
    register_now.click
end

When(/^I fill in all available fields$/) do
    date = @driver.text_field id: 'day-input'
    date.exists?
    date.set '06'
    date.value

    month = @driver.text_field id: 'month-input'
    month.exists?
    month.set '10'
    month.value

    year = @driver.text_field id: 'year-input'
    year.exists?
    year.set '1994'
    year.value

    next_page = @driver.button id: 'submit-button'
    next_page.exists?
    next_page.click

    email = @driver.text_field id: 'email-input'
    email.exists?
    email.set 'tarren.patel@hotmail.co.uk'
    email.value

    pword = @driver.text_field id: 'password-input'
    pword.exists?
    pword.set 'Acad3my1'
    pword.value

    pc = @driver.text_field id: 'postcode-input'
    pc.exists?
    pc.set 'AL10 9AY'
    pc.value

    gender = @driver.select_list id: 'gender-input'
    gender.select 'Male'
    gender.selected_options

    #This line of code with grab all elements under the following class and select the second one (0 is first) and click it
    # @driver.link(:class => 'button__radio-label', :index => 1).click

    #This line of code will find an element by its class and text
    sleep(2)
    @driver.element(:xpath => '//*[@id="marketingOptIn"]/div[1]/div[2]/label/div/div').click

end

And(/^click sign up$/) do
    register = @driver.button id: 'submit-button'
    register.exists?
    register.click
end

Then(/^I have a new account$/) do
    @driver.element(:id => 'idcta-username', :text => 'Your account').exists?
end

When(/^I leave a required field blank$/) do
    date = @driver.text_field id: 'day-input'
    date.exists?
    date.set '06'
    date.value

    month = @driver.text_field id: 'month-input'
    month.exists?
    month.set '10'
    month.value

    year = @driver.text_field id: 'year-input'
    year.exists?
    year.set '1994'
    year.value

    next_page = @driver.button id: 'submit-button'
    next_page.exists?
    next_page.click

    email = @driver.text_field id: 'email-input'
    email.exists?
    email.set 'tarren.patel@hotmail.co.uk'
    email.value

    pword = @driver.text_field id: 'password-input'
    pword.exists?
    pword.set 'Acad3my1'
    pword.value

    pc = @driver.text_field id: 'postcode-input'
    pc.exists?

    gender = @driver.select_list id: 'gender-input'
    gender.select 'Male'
    gender.selected_options

    sleep(2)
    @driver.element(:xpath => '//*[@id="marketingOptIn"]/div[1]/div[2]/label/div/div').click

end

Then(/^I should see a blank error message$/) do
    register = @driver.button id: 'submit-button'
    register.exists?
    register.click

    error = @driver.element id: 'form-error-postcode'
    error.exists?
    error

end

And(/^the account is not created$/) do
  not_created = @driver.element id: 'submit-button'
  not_created.exists?
  not_created
end

##############################################

# When(/^I use an existing email$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should see an error message$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# ##############################################

# And(/^I navigate to the sign in page$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^I input credentials$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should be able to view account$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end