require 'simplecov'
SimpleCov.start 'rails'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'
require 'nokogiri'
require 'ap'
require 'capybara/poltergeist'
require 'faker'
require 'json'
require 'chronic'
require 'active_support/time'
require 'httparty'
require 'pry'
require 'tzinfo'
require 'site_prism'
require 'addressable/uri'
require 'addressable/template'
require 'uri'
require 'cgi'
require 'sauce'
require 'sauce/capybara'
require 'rspec'
require 'clipboard'
require 'active_support/core_ext/object/blank'
require 'eyes_selenium'
require 'sanitize'
require 'touch_action'
require 'touch_action/capybara_rspec_helper'
require 'touch_action/selenium-webdriver'

#TODO: Post request based on date (once jenkins build is created)

RSpec.configure do |config|
  config.include Capybara::DSL, :type => :feature
end
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_driver = :chrome
