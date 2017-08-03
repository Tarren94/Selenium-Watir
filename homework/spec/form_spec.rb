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





end          