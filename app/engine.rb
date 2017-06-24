class Engine
  attr_reader :driver

  def initialize(driver)
    @driver = driver
    @waiter = Helper.new(driver)
    @database = Database.new
  end

  def start
    binding.pry

    driver.get 'http://example.org/'
    # @waiter.wait_for('.tracking-collector')
  rescue
    # Close Connection
    @database.close
  end

  def update_css_properties
    PropertyUpdater.update_css_properties(@driver, @database)
  end
end
