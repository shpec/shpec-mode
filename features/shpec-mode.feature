Feature: Shpec Mode higlight
  In order to do edit my shell specification
  As a emacs user
  I want to do have the proper highlight and commands

  Scenario: Setup a nice buffer and the mode
    Given I switch to buffer "*my-shpec*" 
     And I clear the buffer
     And I insert:
      """
      describe 'My wonderfull Shpec'
        it 'is a test'
          assert equal true false
        end
      end
      """
      And I turn on shpec-mode

  Scenario: Describe Word higlight
    When I go to word "describe"
    Then current point should have the font-lock-function-name-face face
  
  Scenario: End Word higlight
    When I go to word "end"
    Then current point should have the font-lock-function-name-face face

  Scenario: It Word higlight
    When I go to word "it"
    Then current point should have the font-lock-function-name-face face

  Scenario: Assert Word higlight
    When I go to word "assert"
    Then current point should have the font-lock-type-face face

  Scenario: Equal Word higlight
    When I go to word "equal"
    Then current point should have the font-lock-builtin-face face

