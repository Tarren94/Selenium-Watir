require 'spec_helper'

describe Bbc do

    before (:all) do
        @bbc_site = Bbc.new
        @bbc_site.go_to_homepage
    end


    it "Verify that I am able to navigate to the homepage" do
        expect(@bbc_site.current_url).to eq ('https://www.bbc.co.uk/')
    end

    it "Verify that a sign in button is displayed" do
        expect(@bbc_site.sign_in_link.displayed?).to be (true)
    end
    
    it "Verify that when I click the sign in button, the sign in page is displayed" do
        @bbc_site.sign_in_link.click
        expect(@bbc_site.current_url).to eq ('https://account.bbc.com/signin')
    end

    it "Verify that when I sign in with invalid credentials, an error message is displayed" do
        @bbc_site.username_input.send_keys ("tarrenpatel")
        @bbc_site.password_input.send_keys ("Acad3my1")
        @bbc_site.login_button.click
        expect(@bbc_site.login_error_message.displayed?).to be (true)
    end

end


    

# HELP!!!!!!!!!!!!!!!!!!!!!!!!!
# expect(@***.whatever you want to check).to whatever matcher you want to use
# when using the rdocs, if the title states element, it means you can code against the element. If it states driver, then it must be coded against the driver
# Class method - use self. against the method inside a class. This way you can call the method without instantiating the class