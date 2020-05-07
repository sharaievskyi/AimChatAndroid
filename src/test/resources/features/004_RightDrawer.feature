Feature: Right drawer

  Scenario: 4.001 Check transition by a tap on the "three-dots" button on the top right corner in the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.002 Check transition by a tap on the "three-dots" button on the top right corner in the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room in the left drawer
    Then the "Thor" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.003 Check transition by a tap on the "three-dots" button on the top right corner in the direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened

  Scenario: 4.004 Check "mute" public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.005 Check to unmute public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms

  Scenario: 4.006 Check "mute" private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.007 Check to unmute private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 4.008 Check "mute" direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.009 Check to unmute direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then the room "androidQA2" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 4.010 Check "star" public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the "Favorites" title is present
    Then the room "General" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.011 Check  unstar public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the "FAVORITES" title is not present
    Then the room "General" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.012 Check "star" private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.013 Check unstar private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "Hulk" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.014 Check "star" direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.015 Check unstar direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "androidQA2" is presented in the "RECENT DIRECTS" section

  Scenario: 4.016 Check for clickable "Room members" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened

  Scenario: 4.017 Check search in the "Room members" input field.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "androidQA2" in the "Search user name" input field
    Then the "androidQA2" room appears in the Room members search result

  Scenario: 4.018 Check for the open direct user through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" room
    And tap on the "Dialog button" button
    Then the "androidQA2" direct room is opened
    When enter "qwerty83" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty83" sent

  Scenario: 4.019 Check for clickable "Back" button in the "Room members" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And tap on the Back button
    Then the "General" room is opened

  Scenario: 4.020 Check for clickable "Pinned messages" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.021 Checking the clickability of tab "Messages" in "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Messages tab
    Then the Messages tab is selected

  Scenario: 4.022 Checking the clickability of tab "Files" in "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the "Files" tab
    Then the "Files" tab is selected

  Scenario: 4.023 Check for clickable "Back" button in the "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.024 Check transition to pinned message in chat history for public room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When enter "qwerty84" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty84" sent
    When long tap on "qwerty84" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty84" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    And wait while results are refreshed
    When enter "qwerty85" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty85" sent
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty84" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty84" message
    When tap on the "qwerty84" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty84" is open in chat history
    Then message "qwerty84" marked as "pinned"

  Scenario: 4.025 Check transition to pinned message in chat history for private room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room in the left drawer
    Then the "Thor" room is opened
    When enter "qwerty86" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty86" sent
    When long tap on "qwerty86" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty86" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty87" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty87" sent
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty86" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty86" message
    When tap on the "qwerty86" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty86" is open in chat history
    Then message "qwerty86" marked as "pinned"

  Scenario: 4.026 Check transition to pinned message in chat history for direct room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When enter "qwerty88" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty88" sent
    When long tap on "qwerty88" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty88" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty89" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty89" sent
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty88" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty88" message
    When tap on the "qwerty88" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty88" is open in chat history
    Then message "qwerty88" marked as "pinned"

  Scenario: 4.027 Check transition to pinned message in chat history for public room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty84" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty84" message
    When tap on the "qwerty84" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty84" is open in chat history
    Then message "qwerty84" marked as "pinned"

  Scenario: 4.028 Check transition to pinned message in chat history for private room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room in the left drawer
    Then the "Thor" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty86" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty86" message
    When tap on the "qwerty86" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty86" is open in chat history
    Then message "qwerty86" marked as "pinned"

  Scenario: 4.029 Check transition to pinned message in chat history for direct room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty88" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty88" message
    When tap on the "qwerty88" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty88" is open in chat history
    Then message "qwerty88" marked as "pinned"

  Scenario: 4.033 Check for clickable "Starred messages" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.034 Check transition to starred message in chat history for public room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When enter "qwerty90" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty90" sent
    When long tap on "qwerty90" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty90" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty91" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty91" sent
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty90" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty90" message
    When tap on the "qwerty90" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty90" is open in chat history
    Then message "qwerty90" marked as "starred"

  Scenario: 4.035 Check transition to starred message in chat history for private room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room in the left drawer
    Then the "Thor" room is opened
    When enter "qwerty92" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty92" sent
    When long tap on "qwerty92" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty92" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty93" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty93" sent
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty92" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty92" message
    When tap on the "qwerty92" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty92" is open in chat history
    Then message "qwerty92" marked as "starred"

  Scenario: 4.036 Check transition to starred message in chat history for direct room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When enter "qwerty94" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty94" sent
    When long tap on "qwerty94" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty94" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty95" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "qwerty95" sent
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty94" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty94" message
    When tap on the "qwerty94" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty94" is open in chat history
    Then message "qwerty94" marked as "starred"

  Scenario: 4.037 Check transition to starred message in chat history for public room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty90" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty90" message
    When tap on the "qwerty90" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty90" is open in chat history
    Then message "qwerty90" marked as "starred"

  Scenario: 4.038 Check transition to starred message in chat history for private room by click on the message in "Message" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room in the left drawer
    Then the "Thor" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty92" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty92" message
    When tap on the "qwerty92" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty92" is open in chat history
    Then message "qwerty92" marked as "starred"

  Scenario: 4.039 Check transition to starred message in chat history foe direct room by click on the message in "Message" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty94" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty94" message
    When tap on the "qwerty94" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty94" is open in chat history
    Then message "qwerty94" marked as "starred"

  Scenario: 4.043 Check for clickable "Back" button in the "Starred messages" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.044 Check for clickable "Uploaded files" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Uploaded files" link in the Right drawer
    Then the "Uploaded files" screen is opened

  Scenario: 4.051 Check for clickable "Back" button in the "Uploaded files" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Uploaded files" link in the Right drawer
    Then the "Uploaded files" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.052 Check for clickable "Room settings" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened

  Scenario: 4.053 Check "mute room" function for a public room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.055 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.056 Check "unmuted room" function for a public room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms

  Scenario: 4.057 Check "mute room" function for a private room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "Hulk" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.059 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "Hulk" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.060 Check "unmuted room" function for a private room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "Hulk" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 4.061 Check "mute room" function for a direct room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.063 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.064 Check "unmuted room" function for a direct room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the room "androidQA2" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 4.065 Check for clickable "Back" button in the "Room settings" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.078 Check "Leave room" function for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "Alfresco" room
    Then the "Alfresco" room is opened
    When tap on the "Join" button
    And wait while results are refreshed
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    Then "You left public room #Alfresco" alert is displayed
    When tap on the "Ok" link
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Alfresco" room is not presented in the left drawer

  Scenario: 4.079 Check "Leave room" function for private room.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA2@email.com" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "HumanTorch" in the "Create room name" input field
    And enter "Johnny Storm" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA1" in the "search user name" input field
    And tap on the "androidQA1" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "HumanTorch" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Aimprosoft" link
    Then pop-up menu is opened in the Left drawer
    When tap on the "Sign out" link
    Then the "Sign in to Aimprosoft" screen is opened
    When tap on the "Back" button
    Then the "Sign in to your Team" screen is opened
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "HumanTorch" room is presented in the left drawer
    And tap on the "HumanTorch" room in the left drawer
    Then the "HumanTorch" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "HumanTorch" room is not presented in the left drawer

  Scenario: 4.080 Check "Hide conversation" function for direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the Search sign
    And wait while input field would be presented
    When enter "testuser" in the "Select users" input field
    When tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "Hide conversation" link
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "testuser1" room is not presented in the left drawer

  Scenario: 4.081 Checking adds users in the public room as the owner through the right drawer.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And enter "MisterFantastic" in the "Create room name" input field
    And enter "Reed Richards" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen

  Scenario: 4.082 Checking remove any user from the public room as an owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "MisterFantastic" room is presented in the left drawer
    And tap on the "MisterFantastic" room in the left drawer
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from MisterFantastic" link
    And wait while results are refreshed
    Then the "androidQA2" user disappear in the Room members screen

  Scenario: 4.083 Check change admin rights to another participant in the public room as the an owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "MisterFantastic" room is presented in the left drawer
    And tap on the "MisterFantastic" room in the left drawer
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
    Then the "androidQA2" user is presented under "Administration" section and "androidQA1" user
    Then the "(admin)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 4.084 Check change owner's rights to other participant in the public room as the an owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "MisterFantastic" room is presented in the left drawer
    And tap on the "MisterFantastic" room in the left drawer
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "androidQA2" user is presented between "Administration" section and "androidQA1" user
    Then the "(owner)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 4.085 Checking adds users in the public room as the admin through the right drawer.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "MisterFantastic" room is presented in the left drawer
    And tap on the "MisterFantastic" room in the left drawer
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "test" in the "Search user name" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.086 Checking remove any user from the public room as an admin.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "MisterFantastic" room is presented in the left drawer
    And tap on the "MisterFantastic" room in the left drawer
    Then the "MisterFantastic" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from MisterFantastic" link
    And wait while results are refreshed
    Then the "testuser2" user disappear in the Room members screen

  Scenario: 4.087 Checking adds users in the private room as the owner through the right drawer.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "Storm" in the "Create room name" input field
    And enter "Ororo Munroe" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen

  Scenario: 4.088 Checking remove any user from the private room as an owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from Storm" link
    And wait while results are refreshed
    Then the "androidQA2" user disappear in the Room members screen

  Scenario: 4.089 Check assign admin rights to another member in the private room as the owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
    Then the "androidQA2" user is presented under "Administration" section and "androidQA1" user
    Then the "(admin)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 4.090 Check change owner's rights to the other members in the private room as the owner.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "androidQA2" user is presented between "Administration" section and "androidQA1" user
    Then the "(owner)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 4.091 Checking adds users in the private room as the admin through the right drawer.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "test" in the "Search user name" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.092 Checking remove any user from the private room as an admin.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from Storm" link
    And wait while results are refreshed
    Then the "testuser2" user disappear in the Room members screen

  Scenario: 4.093 Check "Edit room" function for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room in the left drawer
    Then the "CaptainAmerica" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "CaptainMarvel" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "CaptainMarvel" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "CaptainMarvel" room is opened

  Scenario: 4.094 Checking change description of the room in the "Edit room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change description to "Carol Danvers" in the field "Edit room description"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then description "Carol Danvers" of room is present

  Scenario: 4.095 Check delete members from "Edit list of members" in the "Edit Room" screen for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from CaptainMarvel" link
    And wait while results are refreshed
    Then the "androidQA2" user disappear in the Room members screen

  Scenario: 4.096 Check invite members in the "Edit list of members" in the "Edit Room" screen for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" link
    And tap on the "Apply select users" button
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen

  Scenario: 4.097 Checking assign admin rights.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
    Then the "androidQA2" user is presented under "Administration" section and "androidQA1" user
    Then the "(admin)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 4.098 Check cancel delete room for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "CaptainMarvel" room is opened

  Scenario: 4.099 Check "Delete room" function for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "CaptainMarvel" room is presented in the left drawer
    And tap on the "CaptainMarvel" room in the left drawer
    Then the "CaptainMarvel" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The public room #CaptainMarvel has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

    Scenario: 4.100 Check cancel delete room for public room.
      Given login using the properties file
      Then the user is logged in
      Then the "General" room is opened
      When tap on the "Logo" button
      Then Left Drawer is opened
      Then the "Hulk" room is presented in the left drawer
      And tap on the "Hulk" room in the left drawer
      Then the "Hulk" room is opened
      When tap on the "three dots" button
      Then the "Room info" screen is opened
      When tap on the "Room settings" link in the Right drawer
      Then the "Room settings" screen is opened
      When tap on the "Delete room" link
      And wait while results are refreshed
      When tap on the "Cancel" button
      Then the "Room settings" screen is opened
      When tap on the Back button
      Then the "Hulk" room is opened

  Scenario: 4.101 Check "Delete room" function for private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room in the left drawer
    Then the "Hulk" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The private room #Hulk has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened