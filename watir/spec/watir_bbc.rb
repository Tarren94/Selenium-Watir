require 'watir'

class Bbc

    def initialize
        @driver = Watir::Browser.new :chrome
        @driver.driver.manage.timeouts.implicit_wait = 10
    end

    def go_to_homepage
        @driver.goto 'http://www.bbc.co.uk'
    end

    def make_a_search
        t = @driver.text_field id: 'orb-search-q'
        t.exists?
        t.set 'Neymar'
        t.value
        btn = @driver.button id: 'orb-search-button'
        btn.exists?
        btn.click
    end

    def go_to_sign_in_page
        l = @driver.link id: 'idcta-link'
        l.exists?
        l.click
    end
    
    def username_credentials
        a = @driver.text_field id: 'username-input'
        a.exists?
        a.set 'tpatel@spartaglobal.co'
        a.value
    end

    def password_credentials
        c = @driver.text_field id: 'password-input'
        c.exists?
        c.set 'Acad3my1'
        c.value
    end

    def click_sign_in
        btn = @driver.button id: 'submit-button'
        btn.exists?
        btn.click
    end

    # def go_to_customise_your_homepage
    #     l = @driver.link aria-label: 'Customise your Homepage'
    #     l.exists?
    #     l.click
    # end

end

bbc = Bbc.new
bbc.go_to_homepage
bbc.make_a_search
bbc.go_to_sign_in_page
bbc.username_credentials
bbc.password_credentials
bbc.click_sign_in
# bbc.go_to_customise_your_homepage



# Watir documentation help
# http://watir.com/docs/home