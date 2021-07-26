@smoke
Feature: Pup Website Nav

#  Scenario: PUP Academic Colleges
#    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
#    * driver 'https://www.pup.edu.ph'
#    And mouse().move("{a}Academic").go()
#     * delay(1000)
#    When click('{a}Colleges')
#     * delay(1000)
#    Then waitForUrl('https://www.pup.edu.ph/academic')
#     * delay(3000)



  Scenario Outline: Using <name>
    Given configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    And driver 'https://www.pup.edu.ph'
    And mouse().move("{a}<hover-value>").go()
    When click("{a}<clicked-value>")
    Then waitForUrl('<expected>')
    * delay(2000)

    Examples:
      | name                  | hover-value            | clicked-value      | expected                        |
      | PUP Academic Colleges | Academic               | Colleges           | https://www.pup.edu.ph/academic |
      | PUP Academic Shs      | Academic               | Senior High School | https://www.pup.edu.ph/shs      |