Feature: Toolbar

  Scenario: 5.001 Check transition by click on the name of the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened

  Scenario: 5.002 Check "mute room" function for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And wait while results are refreshed
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 5.004 Checking the "unmute room" function in the "Room settings" for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And wait while results are refreshed
    Then the room "General" is between "Rooms" section and "IronMan" room

  Scenario: 5.005 Check notification settings "only mentions" in the "Room settings" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Only mentions" radio button
    When tap on the "Apply settings" button
    Then the "General" room is opened
    Then the chat history is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    Then "Only mentions" notification settings is saved

  Scenario: 5.010 Check the "Leave room" function for the public room as a participant.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room in the left drawer
    Then the "Marketplace" room is opened
    When tap on the "Marketplace" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    Then "You left public room #Marketplace" alert is displayed

  Scenario: 5.011 Check the room name edit in the "Edit Room" screen.
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
    And enter "BlackWidow" in the "Create room name" input field
    And tap on the "Apply create room" button
    Then the "BlackWidow" room is opened
    When tap on the "BlackWidow" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "DoctorStrange" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "DoctorStrange" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "DoctorStrange" room is opened

  Scenario: 5.012 Check the room name validation with Russian letters in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "ТестКомната" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should start from latin symbol or digit" alert is displayed

  Scenario: 5.014 Check the room name validation with the empty field in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When clear the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.015 Check the room name validation with only whitespace in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "   " in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.016 Check the room name validation with only special characters in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room in the left drawer
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "%%&&*" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should start from latin symbol or digit" alert is displayed

  Scenario: 5.017 Check add a new members to the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room in the left drawer
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
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
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen

  Scenario: 5.018 Checking delete the members from the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room in the left drawer
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from DoctorStrange" link
    And wait while results are refreshed
    Then the "androidQA2" user disappear in the Room members screen

  Scenario: 5.019 Check the "Assign as administrator" function in the "Room members" screen for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room in the left drawer
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
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
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
    Then the "androidQA2" user is presented under "Administration" section and "androidQA1" user
    Then the "(admin)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 5.020 Check the "Reassign owner's rights" function in the "Room members" screen for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room in the left drawer
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "androidQA2" user is presented between "Administration" section and "AndroidQA1" user
    Then the "(owner)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 5.021 Check the cancel "Delete room" in the "Room Settings" screen for the public room.
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
    And enter "Batman" in the "Create room name" input field
    And enter "Bruce Wayne" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "Batman" room is opened
    When tap on the "Batman" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "Batman" room is opened

  Scenario: 5.022 Check the "Delete room" function in the "Room settings" screen for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Batman" room is presented in the left drawer
    And tap on the "Batman" room in the left drawer
    Then the "Batman" room is opened
    When tap on the "Batman" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The public room #Batman has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.024 Check transition by click on the name of the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room in the left drawer
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened

  Scenario: 5.025 Check "mute room" function for private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room in the left drawer
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "SpiderMan" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And wait while results are refreshed
    Then the room "SpiderMan" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 5.027 Checking the "unmute room" function in the "Room settings" for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room in the left drawer
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "SpiderMan" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And wait while results are refreshed
    Then the room "SpiderMan" is between "MisterFantastic" and "Storm" rooms

  Scenario: 5.028 Check notification settings "only mentions" in the "Room settings" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room in the left drawer
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Only mentions" radio button
    When tap on the "Apply settings" button
    Then the "SpiderMan" room is opened
    Then the chat history is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    Then "Only mentions" notification settings is saved

  Scenario: 5.031 Check the "Leave room" function for the private room as a member.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Storm" room is presented in the left drawer
    And tap on the "Storm" room in the left drawer
    Then the "Storm" room is opened
    When tap on the "Storm" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.032 Check the room name edit in the "Edit Room" screen.
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
    And enter "Blade" in the "Create room name" input field
    And enter "Eric Brooks" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "Blade" room is opened
    When tap on the "Blade" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "GhostRider" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "GhostRider" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "GhostRider" room is opened

  Scenario: 5.033 Check the room name validation with Russian letters in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room in the left drawer
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "ТестКомната" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should start from latin symbol or digit" alert is displayed

  Scenario: 5.035 Check the room name validation with the empty field in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When clear the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.036 Check the room name validation with only whitespace in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "   " in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.037 Check the room name validation with only special characters in the "Edit Room" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "%%&&*" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should start from latin symbol or digit" alert is displayed

  Scenario: 5.038 Check add a new members to the private room.
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
    And enter "Deadpool" in the "Create room name" input field
    And enter "Wade Winston Wilson" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "Deadpool" room is opened
    When tap on the "Deadpool" name in the toolbar
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
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen

  Scenario: 5.039 Checking delete the members from the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Deadpool" room is presented in the left drawer
    And tap on the "Deadpool" room
    Then the "Deadpool" room is opened
    When tap on the "Deadpool" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from" link
    And wait while results are refreshed
    Then the "androidQA2" user disappear in the Room members screen

  Scenario: 5.040 Check the "Assign as administrator" function in the "Room members" screen for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Deadpool" room is presented in the left drawer
    And tap on the "Deadpool" room
    Then the "Deadpool" room is opened
    When tap on the "Deadpool" name in the toolbar
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
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "androidQA2" user appear in the Room members screen
    When tap on the Back button
    Then the "Edit room" screen is opened
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "Deadpool" room is opened
    When tap on the "Deadpool" name in the toolbar
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

  Scenario: 5.041 Check the "Reassign owner's rights" function in the "Room members" screen for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Deadpool" room is presented in the left drawer
    And tap on the "Deadpool" room in the left drawer
    Then the "Deadpool" room is opened
    When tap on the "Deadpool" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "androidQA2" user is presented between "Administration" section and "androidQA1" user
    Then the "(owner)" role is presented between "androidQA2" username and "null null" user full name

  Scenario: 5.042 Check the cancel "Delete room"  in the "Room Settings" screen for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room in the left drawer
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "GhostRider" room is opened

  Scenario: 5.043 Check the "Delete room" function in the "Room settings" screen for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room in the left drawer
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The private room #GhostRider has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.045 Check transition by click on the name of the direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened

  Scenario: 5.046 Check "mute room" function for direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And wait while results are refreshed
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 5.048 Checking the "unmute room" function in the "Direct settings" for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    And wait while results are refreshed
    Then the room "androidQA2" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 5.049 Check notification settings "Nothing" in the "Direct settings" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Nothing" radio button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    Then "Nothing" notification settings is saved

  Scenario: 5.051 Check notification settings "Everything" in the "Direct settings" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room in the left drawer
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Everything" radio button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    When tap on the "androidQA2" name in the toolbar
    Then the "Direct settings" screen is opened
    Then "Everything" notification settings is saved

  Scenario: 5.052 Check "Hide conversation" function in the "Direct settings" screen.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room in the left drawer
    Then the "testuser2" direct room is opened
    When tap on the "testuser2" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Hide conversation" link
    Then the "General" room is opened
    When swipe from left to right
    Then the "testuser2" room is deleted from left drawer