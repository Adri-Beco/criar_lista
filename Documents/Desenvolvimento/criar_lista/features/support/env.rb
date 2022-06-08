require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Pages)
World(Helper)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://painel.icasei.com.br/login?redirect_url=/'
    config.default_max_wait_time = 10

end   