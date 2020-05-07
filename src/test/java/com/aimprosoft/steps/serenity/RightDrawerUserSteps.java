package com.aimprosoft.steps.serenity;

import com.aimprosoft.androidPages.RightDrawerPage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.junit.Assert;

public class RightDrawerUserSteps extends ScenarioSteps {

    RightDrawerPage rightDrawerPage;

    @Step
    public void verifyThatTheMessageIsOpenInChatHistory(String messageText) {
        Assert.assertTrue("The message is not opened in chat history", rightDrawerPage.verifyThatTheMessageIsOpenInChatHistory(messageText));
    }

    @Step
    public void tapOnTheMessagesTab() {
        rightDrawerPage.tapOnTheMessagesTab();
    }
    @Step
    public void theMessagesTabIsSelected() {
        Assert.assertTrue(" The tab is not selected", rightDrawerPage.theMessagesTabIsSelected());
    }
    @Step
    public void verifyThatTheRoomIsPresentedBetweenSections(String roomName, String sectionOne, String sectionTwo) {
        Assert.assertTrue("The room is not between " + sectionOne + " and " + sectionTwo,
                rightDrawerPage.theElementBetweenSections(roomName, sectionOne, sectionTwo));
    }
    @Step
    public void verifyThatTheRoomIsPresentedInTheSection(String roomName, String sectionName) {
        Assert.assertTrue("The room " + roomName + " is not presented in the " + sectionName + " section", rightDrawerPage.theElementInTheSection(roomName, sectionName));
    }
    @Step
    public void verifyThatTheRoomIsPresentedBetweenRoomAndSection(String roomNameOne, String roomNameTwo, String section) {
        Assert.assertTrue("The room is not between " + roomNameTwo + " and" + section,
                rightDrawerPage.theElementBetweenRoomAndSection(roomNameOne, roomNameTwo, section));
    }
    @Step
    public void verifyThatTheRoomIsPresentedBetweenSectionAndRoom(String roomNameOne, String section, String roomNameTwo) {
        Assert.assertTrue("The room is not between " + section + " and" + roomNameTwo,
                rightDrawerPage.theElementBetweenSectionAndRoom(roomNameOne, section, roomNameTwo));
    }
    @Step
    public void verifyThatTheRoomIsPresentedBetweenRooms(String roomNameOne, String roomNameTwo, String roomNameThree) {
        Assert.assertTrue("The room is not between " + roomNameTwo + " and" + roomNameThree + " rooms",
                rightDrawerPage.theElementBetweenRooms(roomNameOne, roomNameTwo, roomNameThree));
    }
    @Step
    public void verifyThatTheRoomIsPresentedUnderTheRoomInTheSection(String roomNameOne, String roomNameTwo, String section) {
        Assert.assertTrue("The room is not under the " + roomNameTwo + " in the" + section + " section",
                rightDrawerPage.theElementUnderTheRoomsInTheSection(roomNameOne, roomNameTwo, section));
    }
    @Step
    public void verifyThatTheUserIsPresentedBetweenSectionAndUser(String userNameOne, String section, String userNameTwo) {
        Assert.assertTrue("The user is not between " + section + " and" + userNameTwo,
                rightDrawerPage.theElementBetweenSectionAndUser(userNameOne, section, userNameTwo));
    }
    @Step
    public void theRoleIsPresentedBetweenUsernameAndUserFullName(String role, String userName, String userFullName) {
        Assert.assertTrue( "Role is not presented between " + userName + " and " + userFullName, rightDrawerPage.theRoleIsPresentedBetweenUsernameAndUserFullName(role, userName, userFullName));
    }
    @Step
    public void theUserIsPresentedUnderSectionAndUser(String userNameOne, String section, String userNameTwo) {
        Assert.assertTrue("User is not presented under " + section + " and " + userNameTwo, rightDrawerPage.theUserIsPresentedUnderSectionAndUser(userNameOne, section, userNameTwo));
    }
    @Step
    public void theRoomAppearsInTheRoomMembersSearchResult(String userName) {
        Assert.assertTrue("User name is not displayed in the Search result", rightDrawerPage.theRoomAppearsInTheRoomMembersSearchResult(userName));
    }

    @Step
    public void verifyThatTheMessageMarkedAsPinnedOrStarred(String messageText, String element) {
        Assert.assertTrue("The message is not marked as " + element, rightDrawerPage.messageMarkedAs(messageText, element));
    }
    @Step
    public void verifyThatTheRadioButtonByXpathIsSelected(String buttonName) {
        Assert.assertTrue("Radio-button is not selected", rightDrawerPage.verifyThatTheRadioButtonByXpathIsSelected(buttonName));
    }
    @Step
    public void verifyThatTheUserNameIsPresentedInTheRoomMembersScreen(String userName) {
        Assert.assertTrue("User is not presented in the room members screen", rightDrawerPage.verifyThatTheUserNameIsPresentedInTheRoomMembersScreen(userName));
    }
    @Step
    public void verifyThatTheUsersRoleIsPresentedOnTheRightUserName(String role, String userName) {
        Assert.assertTrue("Role is not present", rightDrawerPage.verifyThatTheUsersRoleIsPresentedOnTheRightUserName(role, userName));
    }
}
