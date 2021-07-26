Feature: Airlines Search Flights


  Scenario Outline: <name>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.philippineairlines.com/en/ph/home'
    * driver.maximize()
    * call read('<feature-value>')


    Examples:
      | name                  | feature-value        |
      | oneway                | oneway.feature       |
      | returning             | returning.feature    |
      | stopover              | stopover.feature    |