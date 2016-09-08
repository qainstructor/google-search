require 'rubygems'
require 'selenium-webdriver'
require 'rspec/expectations'

Before do
  @browser = Selenium::WebDriver.for(:chrome)
end

Given(/^I am on the front page$/) do
  @browser.get('http://google.com')
end

When(/^I search for "([^"]*)"$/) do |search_phrase|
  element = @browser.find_element(name: 'q')
  element.send_keys(search_phrase)
  element.submit
end

Then(/^I should see "([^"]*)"$/) do |text|
  sleep 2
  body = @browser.find_element(tag_name: 'body')
  expect(body.text).to include(text)
end
