require 'watir'

class Form

    def initialize
        @driver = Watir::Browser.new :chrome
        @driver.driver.manage.timeouts.implicit_wait = 10
    end

    def go_to_form_page
        @driver.goto 'http://toolsqa.com/automation-practice-form/'
    end

    def partial_link
        pl = @driver.link xpath: '//*[@id="content"]/form/fieldset/div[1]/a[1]'
        pl.exists?
        pl.click
    end

    def first_name
        fn = @driver.text_field name: 'firstname'
        fn.exists?
        fn.set 'Tarren'
        fn.value
    end

    def last_name
        ln = @driver.text_field name: 'lastname'
        ln.exists?
        ln.set 'Patel'
        ln.value
    end

    def gender
        radiobtn = @driver.radio id: 'sex-0'
        radiobtn.exists?
        radiobtn.set
        radiobtn.set?

    end
    
    def years_exp
        radiobtn = @driver.radio id: 'exp-0'
        radiobtn.exists?
        radiobtn.set
        radiobtn.set?
    end
   
    def date
        date_input = @driver.text_field id: 'datepicker'
        date_input.exists?
        date_input.set '06/10/1994'
        date_input.value
    end

    def profession1
        check = @driver.checkbox id: 'profession-0'
        check.exists?
        check.set
        check.set?
    end

    def profession2
        check = @driver.checkbox id: 'profession-1'
        check.exists?
        check.set
        check.set?
    end

    # def download_framework
    #     download_directory = "#{Dir.pwd}/desktop/SDET9/downloads"
    #     download_directory.tr!('/', '\\') if Selenium::WebDriver::Platform.windows?

    #     profile = Selenium::WebDriver::Chrome::Profile.new
    #     profile[ 'download.prompt_for_download'] = false
    #     profile['download.default_directory'] = download_directory

    #     b = Watir::Browser.new :chrome, profile: profile
    # end

    def automation_tool1
        check = @driver.checkbox id: 'tool-0'
        check.exists?
        check.set
        check.set?
    end

    def automation_tool2
        check = @driver.checkbox id: 'tool-1'
        check.exists?
        check.set
        check.set?
    end

    def automation_tool3
        check = @driver.checkbox id: 'tool-2'
        check.exists?
        check.set
        check.set?
    end    

    def drop_down_list
        drop = @driver.select_list id: 'continents'
        drop.select 'Antartica'
        drop.selected_options
    end

    def selenium_commands
        s = @driver.select_list id: 'selenium_commands'
        s.select 'Wait Commands'
        s.selected_options
    end

    def button
        btn = @driver.button id: 'submit'
        btn.exists?
        btn.click
    end

end

# toolsqa = Form.new
# toolsqa.go_to_form_page
# toolsqa.partial_link
# toolsqa.first_name
# toolsqa.last_name
# toolsqa.gender
# toolsqa.years_exp
# toolsqa.date
# toolsqa.profession1
# toolsqa.profession2
# toolsqa.automation_tool1
# toolsqa.automation_tool2
# toolsqa.automation_tool3
# toolsqa.drop_down_list
# toolsqa.selenium_commands
# toolsqa.button