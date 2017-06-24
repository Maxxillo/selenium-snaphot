require 'selenium-webdriver'
require 'pry-byebug'
require 'mysql2'

options = Selenium::WebDriver::Chrome::Options.new(
  args: ['start-maximized']
)

driver = Selenium::WebDriver.for(
  :chrome,
  options: options
)

Dir["./app/*"].each {|file| require file }

engine = Engine.new(driver)
engine.start
