class Helper
  def initialize(driver)
    @driver = driver
  end

  def wait_for(selector)
    wait = Selenium::WebDriver::Wait.new(
      timeout: 10
    )
    wait.until {
      @driver.find_element(:css, selector)
    }
  end
end
