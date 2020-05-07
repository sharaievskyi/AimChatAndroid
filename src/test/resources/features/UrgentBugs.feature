Feature: Urgent bugs

  Scenario: 11.002 The message isn't displayed in the chat history if send a message not at the bottom of the history. (Bug ID 96222).
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "test message 4" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "test message 4" sent
    When enter "sdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdffdfsdfsdfsdfsdfsdfsdfsddf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 4" is present
    When enter "test message 5" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then the message "test message 5" is visible

  Scenario: 11.004 The app is crashed when the user changes "Room Type", "Room Name" or "Description" in the "Edit Room" screen for the mute private room. (Bug ID 95667).
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
    And enter "AntMan" in the "Create room name" input field
    And enter "Scott Lang" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "AntMan" room is opened
    When tap on the "AntMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "AntMan" room is opened
    When tap on the "AntMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Public room" title
    When tap on the "Apply edit" button
    And wait while results are refreshed
    Then the "Edit room" screen is opened
    And tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the chat history is opened
    When tap on the "AntMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    Then the "public_channel" radio-button is selected

  Scenario: 11.005 The app is crashed if open the "Create room" screen. (Bug ID 95005).
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

  Scenario: 11.006 The "Private room" radio button is disable in the "Create room" screen. (Bug ID 94999).
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
    Then the "public_channel" radio-button is clickable
    Then the "private_channel" radio-button is clickable

  Scenario: 11.007 The sent message isn't displayed in chat history when the room has "New messages" separator. (Bug ID 93325)
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When enter "test message 6" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "test message 6" sent
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
    And wait while results are refreshed
    Then the New messages separator is presented
    Then message "test message 6" is present
    When enter "test message 7" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "test message 7" is visible

  Scenario: 11.010 The last sent message isn't displayed in the room chat. (Bug ID 89704)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "test message 8" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 8" is visible
    When enter "test message 9" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 9" is visible
    When enter "test message 10" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 10" is visible
    When enter "test message 11" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 11" is visible

  Scenario: 11.012 The app is restarted when the user long taps on the username in the "Reaction" screen. (Bug ID 85070)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "test message 12" in the "Write a message" input field
    When tap on the "Send" button
    And hide the keyboard
    Then the message "test message 12" is visible
    When long tap on "test message 12" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😝" "emoji_icon" reaction
    Then reaction "😝" is added
    When long tap on "😝" message in chat history
    Then the "Reactions" screen is opened
    When long tap on the "androidQA1 (you)" username
    Then the "androidQA1" user details screen is opened

  Scenario: 11.013 The app crashes when the user turn off "Mute all chat" and quickly clicks outside the drop-down menu. (Bug ID 84939)
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Switch mute" slider
    And wait while results are refreshed
    And tap on the "Switch mute" slider
    When hide the keyboard
    When tap on the "three dots" button
    Then the "General" room is opened

  Scenario: 11.015 App crashes when the User searches for Direct in the Left panel. (Bug ID 83511)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And enter "r.koniv" in the "Search" input field
    And wait while results are refreshed
    Then the "r.konivec" room appears in the left drawer search result
    When tap on the "r.konivec" room
    Then the "r.konivec" direct room is opened

  Scenario: 11.016 The app crashes if the user deletes search request in the "Search" input of the Left panel. (Bug ID 76877)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And enter "userqa" in the "Search" input field
    And wait while results are refreshed
    Then the "userQA" room appears in the left drawer search result
    When change room name to "user" in the field "Search"
    And wait while results are refreshed
    Then the "userQA" room appears in the left drawer search result

  Scenario: 11.017 Some reactions aren't added to the message. (Bug ID 76384)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "test message 15" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 15" is visible
    When long tap on "test message 15" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😬" "emoji_icon" reaction
    Then reaction "😬" is added
    When long tap on "test message 15" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "🙃" "emoji_icon" reaction
    Then reaction "🙃" is added
    When long tap on "test message 15" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😶" "emoji_icon" reaction
    Then reaction "😶" is added
    When long tap on "test message 15" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "🤓" "emoji_icon" reaction
    Then reaction "🤓" is added
    When long tap on "test message 15" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😌" "emoji_icon" reaction
    Then reaction "😌" is added

  Scenario: 11.020 The app crashes if delete message of the previous day after deleting message of the current day. (Bug ID 73110)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    And wait while input field would be presented
    When enter "Alfresco" in the "Search rooms" input field
    And wait while results are refreshed
    When tap on the "Join" link
    And wait while results are refreshed
    When tap on the "Search logo" button
    When tap on the Back button
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Alfresco" room is presented in the left drawer
    And tap on the "Alfresco" room
    Then the "Alfresco" room is opened
    When enter "test message 16" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 16" is visible
    Then the "Today" separator is presented
    When long tap on "test message 16" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    And wait while results are refreshed
    Then the message "qwerty16" is deleted
    Then the "Today" separator is not displayed

  Scenario: 11.021 The shared message isn't displayed in the chat room history. (Bug ID 72305)
    When login using the properties file
    Then the user is logged in
    Given the "General" room is opened
    When enter "test message 17" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message 17" is visible
    When long tap on "test message 17" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    When enter "Gener" in the "Room name search" input field
    And tap on the "General" room
    And tap on the "Apply select room" button
    Then the "General" room is opened
    Then message "test message 17" is shared to the room

  Scenario: 11.023 "Leave" button is displayed for the "General" room. (Bug ID 69332)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    And wait while input field would be presented
    When enter "Gener" in the "Search rooms" input field
    And wait while results are refreshed
    Then the "Leave" link is not presented
    
  Scenario: 11.024 The app crashes when tap cancel button in the "Choose users" screen. (Bug ID 69274)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the Search sign
    Then the "Global search" screen is opened
    When tap on the "choose users" link
    Then the "Choose users" screen is opened
    When tap on the "a.antonenko" "username"
    And tap on the Back button
    Then the "Global search" screen is opened

  Scenario: 11.026 The app crashes if try to create room with an accented letters in the room name. (Bug ID 68943)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And enter "testÁ" in the "Create room name" input field
    And tap on the "Apply create room" button
    And tap on the "Apply create room" button
    Then the "Create room" screen is opened

  Scenario: 11.027 The app crashes if open the "Message details" screen of message with # symbol. (Bug ID 68061)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "#" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "#" is visible
    And tap on "#" message in chat history
    Then the "Message" details screen is opened
    Then message "#" is present

  Scenario: 11.028 The app crashes when editing a message with 2000 characters through the Message Details screen. (Bug ID 68035)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "dfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When hide the keyboard
    And tap on "dfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfgh" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened

  Scenario: 11.031 The app crashes when the user send "#" to the chat. (Bug ID 67362)
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When enter "#" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "#" is visible
    And wait while results are refreshed