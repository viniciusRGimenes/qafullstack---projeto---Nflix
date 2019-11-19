require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "http://localhost:8080" #linux
    #config.app_host = "http://192.168.99.100:8080" #windows
end