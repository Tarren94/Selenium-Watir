require 'selenium-webdriver'

class Bbc

    def initialize
        @driver = Selenium::WebDriver.for :chrome
        @driver.manage.window.maximize
    end

    def go_to_homepage
        @driver.get 'https://www.bbc.co.uk/'
    end

    def current_url
        @driver.current_url
    end

    def sign_in_link
        @driver.find_element(:id, 'idcta-link')
    end

    def username_input
        @driver.find_element(:id, 'username-input')
    end
    
    def password_input
        @driver.find_element(:id, 'password-input')
    end

    def login_button
        @driver.find_element(:id, 'submit-button')
    end

    def login_error_message
        @driver.find_element(:id, 'form-error-username')
    end

end