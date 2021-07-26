@smoke
Feature: oneway


  Scenario Outline: Using <name>

    And highlight('{a}BOOK FLIGHT')
    * delay(2000)
    And click('input[id=flightTypeOneWay_RB]')
    * delay(2000)
    And highlight('{label}DESTINATION')
    And input('input[id=destinationSel]', '<value>')
    * input('input[id=destinationSel]', Key.ENTER)
    * delay(2000)
    And highlight('{label}CABIN CLASS')
    And select('select[id=baf-cabin-class]', 1)
    * delay(2000)
    And highlight('button[id=baf-submit-btn]')
    And mouse().move('button[id=baf-submit-btn]').click()
    * delay(2000)
    And highlight('button[id=btnOkayLocationsModalSelectedInternationalDestination]')
    And mouse().move('button[id=btnOkayLocationsModalSelectedInternationalDestination]').click()
    * delay(2000)
    And highlight('button[id=btnOkayLocationsModalAllLocations]')
    And click('button[id=btnOkayLocationsModalAllLocations]')
    * delay(2000)


    Examples:
      | read ('airline.csv') |