Feature: determining the depth of JavaScript objects

  As a JavaScript developer
  I want to be able to determine the depth of objects
  So that I can treat objects with different depth differently.

  - the depth of an object is the number of nesting levels in that object


  Scenario: empty object
    Given the variable "emptyObject = {}"
    When running: "objectDepth(emptyObject)"
    Then I get 1


  Scenario: flat object
    Given the variable:
      """
      captain = {
        first: 'Jean-Luc',
        lastName: 'Picard'
      }
      """
    When running: "objectDepth(captain)"
    Then I get 1


  Scenario: two level of nested attributes
    Given the variable:
      """
      fleetRecord = {
        user: {
          first: 'Jean-Luc',
          lastName: 'Picard'
        },
        starship: 'NCC 1701-D'
      }
      """
    When running: "objectDepth(fleetRecord)"
    Then I get 2


  Scenario: several levels of nested attributes
    Given the variable:
      """
      fooBar = {
        foo: {
          bar: {
            baz: {
              qux: 'yes!'
            }
          }
        },
        fizz: {}
      }
      """
    When running: "objectDepth(fooBar)"
    Then I get 4


  Scenario: flat array
    Given the variable:
      """
      ships = [
        'USS Enterprise',
        'USS Yamato'
      ]
      """
    When running: "objectDepth(ships)"
    Then I get 1


  Scenario: nested array
    Given the variable:
      """
      nestedArrays = [
        [
          []
        ]
      ]
      """
    When running: "objectDepth(nestedArrays)"
    Then I get 3


  Scenario: mixed object
    Given the variable:
      """
      fleet = [
        {
          ships: [
            {
              name: 'USS Enterprise',
              designation: 'NCC 1701-D'
            },
            {
              name: 'USS Yamato',
              designation: 'NCC 71807'
            }
          ]
        },

        {
          starbases: [
            {
              name: 'Deep Space 9',
              type: 'orbital docking station'
            }
          ]
        }
      ]
      """
    When running: "objectDepth(fleet)"
    Then I get 4
