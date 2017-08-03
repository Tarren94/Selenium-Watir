require 'spec_helper'

describe Form do

    before (:all) do
        @driver = Form.new
        @driver.go_to_form_page
    end

    it "Verify that user can navigate to correct page" do
        expect(@driver.current_url).to eq ('http://toolsqa.com/automation-practice-form/')
    end

    it "Verify that a Partial Link is displayed" do
        expect(@driver.partial_link.exists?).to be (true)
    end

    it "Verify that when Partial link is clicked, user is taken to the correct page" do
        @driver.partial_link.click
        expect(@driver.current_url).to eq ('http://toolsqa.com/automation-practice-form/')
    end

    it "Verify that user can input their first name." do
        expect(@driver.first_name.exists?).to be (true)
        @driver.first_name.set ('Tarren')
        expect(@driver.first_name.value).to eq ('Tarren')
    end

    it "Verify that user can input their last name." do
        expect(@driver.last_name.exists?).to be (true)
        @driver.last_name.set ('Patel')
        expect(@driver.last_name.value).to eq ('Patel')
    end

    it "Verify that user can select a gender" do
        expect(@driver.gender.exists?).to be (true)
        @driver.gender.set
        expect(@driver.gender.set?).to be (true)
    end

    it "Verify that user can select the number of years of experience they have" do
        expect(@driver.years_exp.exists?).to be (true)
        @driver.years_exp.set
        expect(@driver.years_exp.set?).to be (true)
    end

    it "Verify that user can input a date" do
        expect(@driver.date.exists?).to be (true)
        @driver.date.set ('06/10/1994')
        expect(@driver.date.value).to eq ('06/10/1994')
    end

    it "Verify that user can tick their profession" do
        expect(@driver.profession1.exists?).to be (true)
        @driver.profession1.set
        expect(@driver.profession1.set?).to be (true)
        expect(@driver.profession2.exists?).to be (true)
        @driver.profession2.set
        expect(@driver.profession2.set?).to be (true)
    end

    it "Verify that user can tick the Automation tools" do
        expect(@driver.automation_tool1.exists?).to be (true)
        @driver.automation_tool1.set
        expect(@driver.automation_tool1.set?).to be (true)
        expect(@driver.automation_tool2.exists?).to be (true)
        @driver.automation_tool2.set
        expect(@driver.automation_tool2.set?).to be (true)
        expect(@driver.automation_tool3.exists?).to be (true)
        @driver.automation_tool3.set
        expect(@driver.automation_tool3.set?).to be (true)
    end

    it "Verify that user is able to select a Continent" do
        expect(@driver.drop_down_list.exists?).to be (true)
        @driver.drop_down_list.select 'Antartica'
        # expect(@driver.drop_down_list.selected_options).to be (true)
    end

    it "Verify that user is able to select a Selenium Command" do
        expect(@driver.selenium_commands.exists?).to be (true)
        @driver.selenium_commands.select 'Wait Commands'
        # expect(@driver.selenium_commands.selected_options).to be (true)
    end

    # it "Verify that user can click the button" do
    #     expect(@driver.button.exists?).to be (true)
    #     @driver.button.click
    #     expect(@driver.current_url).to eq ('')

end          