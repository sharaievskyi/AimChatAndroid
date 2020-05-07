Feature: Profile

  Background:
    Given login using the properties file
    Then the user is logged in

    Scenario: 10.001 Check transition by tap on the "Profile" link.
      Given the "Sign in to your Team" screen is opened
      When enter "chat-demo" in the "Your team url" input field
      When tap on the "CONTINUE" button
      Then the "Sign in to Aimprosoft" screen is opened
      When enter "androidQA1@email.com" in the "Login" input field
      When enter "qwerty123" in the "Password" input field
      And hide the keyboard
      And tap on the "SIGN IN" button
      Given the "General" room is opened
      When tap on the "Logo" button
      Then Left Drawer is opened
      When tap on the "Aimprosoft" link
      Then pop-up menu is opened in the Left drawer
      When tap on the "Profile" link
      Then the "Edit profile" screen is opened

    Scenario: 10.002 Check transition by a tap on the "Back" button in the "Profile" link.
      Given the "Sign in to your Team" screen is opened
      When enter "chat-demo" in the "Your team url" input field
      When tap on the "CONTINUE" button
      Then the "Sign in to Aimprosoft" screen is opened
      When enter "androidQA1@email.com" in the "Login" input field
      When enter "qwerty123" in the "Password" input field
      And hide the keyboard
      And tap on the "SIGN IN" button
      Given the "General" room is opened
      When tap on the "Logo" button
      Then Left Drawer is opened
      When tap on the "Aimprosoft" link
      Then pop-up menu is opened in the Left drawer
      When tap on the "Profile" link
      Then the "Edit profile" screen is opened
      When tap on the Back button
      Then the "General" room is opened