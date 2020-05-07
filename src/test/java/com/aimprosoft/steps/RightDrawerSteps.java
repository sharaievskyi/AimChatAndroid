package com.aimprosoft.steps;

import com.aimprosoft.steps.serenity.RightDrawerUserSteps;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class RightDrawerSteps {

    @Steps
    RightDrawerUserSteps steps;

    @Then("the pinned message {string} is open in chat history")
    public void thePinnedMessageIsOpenInChatHistory(String messageText) {
        steps.verifyThatTheMessageIsOpenInChatHistory(messageText);
    }

    @Then("the starred message {string} is open in chat history")
    public void theStarredMessageIsOpenInChatHistory(String messageText) {
        steps.verifyThatTheMessageIsOpenInChatHistory(messageText);
    }

    @Then("the uploaded file {string} is open in chat history")
    public void theUploadedFileIsOpenInChatHistory(String messageText) {
        steps.verifyThatTheMessageIsOpenInChatHistory(messageText);
    }

    @When("tap on the Messages tab")
    public void tapOnTheMessagesTab() {
        steps.tapOnTheMessagesTab();
    }

    @Then("the Messages tab is selected")
    public void theMessagesTabIsSelected() {
        steps.theMessagesTabIsSelected();
    }

    @Then("the room {string} is between {string} and {string} sections")
    public void theRoomIsBetweenAndSections(String roomName, String sectionOne, String sectionTwo) {
        steps.verifyThatTheRoomIsPresentedBetweenSections(roomName, sectionOne, sectionTwo);
    }

    @Then("the room {string} is presented in the {string} section")
    public void theRoomIsPresentedInTheSection(String roomName, String sectionName) {
        steps.verifyThatTheRoomIsPresentedInTheSection(roomName,sectionName);
    }

    @Then("the room {string} is between {string} room and {string} section")
    public void theRoomIsBetweenRoomAndSection(String roomNameOne, String roomNameTwo, String section) {
        steps.verifyThatTheRoomIsPresentedBetweenRoomAndSection( roomNameOne, roomNameTwo, section);
    }

    @Then("the room {string} is between {string} section and {string} room")
    public void theRoomIsBetweenSectionAndRoom(String roomNameOne, String section, String roomNameTwo) {
        steps.verifyThatTheRoomIsPresentedBetweenSectionAndRoom( roomNameOne, section, roomNameTwo);
    }

    @Then("the room {string} is between {string} and {string} rooms")
    public void theRoomIsBetweenAndRooms(String roomNameOne, String roomNameTwo, String roomNameThree) {
        steps.verifyThatTheRoomIsPresentedBetweenRooms(roomNameOne, roomNameTwo, roomNameThree);
    }

    @Then("the room {string} is presented under the {string} room in the {string} section")
    public void theRoomIsPresentedUnderTheRoomInTheSection(String roomNameOne, String roomNameTwo, String section) {
        steps.verifyThatTheRoomIsPresentedUnderTheRoomInTheSection(roomNameOne, roomNameTwo, section);
    }

    @Then("the {string} user is presented between {string} section and {string} user")
    public void theUserIsPresentedBetweenSectionAndUser(String userNameOne, String section, String userNameTwo) {
        steps.verifyThatTheUserIsPresentedBetweenSectionAndUser( userNameOne, section, userNameTwo);
    }

    @Then("the {string} role is presented between {string} username and {string} user full name")
    public void theRoleIsPresentedBetweenUsernameAndUserFullName(String role, String userName, String userFullName) {
        steps.theRoleIsPresentedBetweenUsernameAndUserFullName(role, userName, userFullName);
    }

    @Then("the {string} user is presented under {string} section and {string} user")
    public void theUserIsPresentedUnderSectionAndUser(String userNameOne, String section, String userNameTwo) {
        steps.theUserIsPresentedUnderSectionAndUser(userNameOne, section, userNameTwo);
    }

    @Then("the {string} room appears in the Room members search result")
    public void theRoomAppearsInTheRoomMembersSearchResult(String userName) {
        steps.theRoomAppearsInTheRoomMembersSearchResult(userName);
    }

    @Then("message {string} marked as {string}")
    public void messageMarkedAs(String messageText, String element) {
        steps.verifyThatTheMessageMarkedAsPinnedOrStarred(messageText, element);
    }

    @Then("the {string} radio-button is selected")
    public void theRadioButtonIsSelected(String buttonName) {
        steps.verifyThatTheRadioButtonByXpathIsSelected(buttonName);
    }

    @Then("the {string} user appear in the Room members screen")
    public void theUserAppearInTheRoomMembersScreen(String userName) {
        steps.verifyThatTheUserNameIsPresentedInTheRoomMembersScreen(userName);
    }

    @Then("the {string} role is presented on the right {string}")
    public void theRoleIsPresentedOnTheRight(String role, String userName) {
        steps.verifyThatTheUsersRoleIsPresentedOnTheRightUserName(role, userName);
    }
}
