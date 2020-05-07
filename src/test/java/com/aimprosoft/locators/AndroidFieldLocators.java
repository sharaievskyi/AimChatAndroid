package com.aimprosoft.locators;

public interface AndroidFieldLocators {

    String YOUR_TEAM_URL = "team_url";
    String USERNAME = "email";
    String LOGIN = "login_input";
    String PASSWORD = "password_input";
    String INPUT_FIELD = "//android.widget.EditText[contains(@resource-id, '$1')]";
    String INPUT_FIELD_XPATH = "//android.widget.EditText";

    // Room creation
    String CREATE_ROOM_NAME = "create_room_name";
    String CREATE_ROOM_DESCRIPTION = "create_room_description";

    // Left drawer
    String SEARCH = "search_field";

    // Browse rooms screen
    String SEARCH_ROOMS = "search_searchEditText";

    String WRITE_A_MESSAGE= "message_bar_input";
    String ADD_A_MESSAGE = "msg_text";
    String ROOM_NAME_SEARCH = "room_name_search";
    String MESSAGE_BAR_INPUT = "message_bar_input";

    // Start direct screen
    String SELECT_USERS = "search_searchEditText";
    String SEARCH_USER_NAME = "username_search";

    // Right Drawer
    String EDIT_ROOM_NAME = "edit_room_name";
    String EDIT_ROOM_DESCRIPTION = "edit_room_description";

    // Profile
    String FIRST_NAME = "profile_first_name";
}
