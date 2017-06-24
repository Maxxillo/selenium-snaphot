class PropertyUpdater
  def initialize(driver, database)
    @driver = driver
    @database = database
  end

  def update_css_properties
    # Standard Css Block
    @driver.get 'https://www.w3schools.com/cssref/default.asp'
    properties = @driver.find_elements(:css, '#leftmenuinnerinner > .notranslate > a')

    properties.each do |property|
      @database.query "insert into css_properties set property='#{property.text}'"
    end
  end
end
