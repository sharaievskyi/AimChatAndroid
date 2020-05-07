package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

public class RightDrawerPage extends MobilePageObject {

    public RightDrawerPage (WebDriver driver) {
        super(driver);
    }

    public boolean verifyThatTheMessageIsOpenInChatHistory(String messageText) {
        return $(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", messageText)).isDisplayed();
    }

    public void tapOnTheMessagesTab() {
        $(AndroidLocators.MESSAGES_TAB).click();
    }

    public boolean theMessagesTabIsSelected() {
        return $(AndroidLocators.MESSAGES_TAB).isSelected();
    }

    public boolean theElementBetweenSections(String roomName, String sectionOne, String sectionTwo) {
        int ySectionOne = androidElementByTextAndId(sectionOne, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int ySectionTwo = androidElementByTextAndId(sectionTwo, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int yRoom = androidElementByTextAndId(roomName, AndroidLocators.ROOM_NAME).getLocation().getY();
        return ySectionOne < yRoom && yRoom < ySectionTwo;
    }

    public boolean theElementInTheSection(String roomName, String sectionName) {
        int ySectionName = androidElementByTextAndId(sectionName, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int yRoom = androidElementByTextAndId(roomName, AndroidLocators.ROOM_NAME).getLocation().getY();
        return ySectionName < yRoom;
    }

    public boolean theElementBetweenRoomAndSection(String roomNameOne, String roomNameTwo, String section) {
        int yRoomOne = androidElementByTextAndId(roomNameTwo, AndroidLocators.ROOM_NAME).getLocation().getY();
        int ySection = androidElementByTextAndId(section, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int yRoomTwo = androidElementByTextAndId(roomNameOne, AndroidLocators.ROOM_NAME).getLocation().getY();
        return yRoomOne < yRoomTwo && yRoomTwo < ySection;
    }

    public boolean theElementBetweenSectionAndRoom(String roomNameOne, String section, String roomNameTwo) {
        int ySection = androidElementByTextAndId(section, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int yRoomTwo = androidElementByTextAndId(roomNameTwo, AndroidLocators.ROOM_NAME).getLocation().getY();
        int yRoomOne = androidElementByTextAndId(roomNameOne, AndroidLocators.ROOM_NAME).getLocation().getY();
        return ySection < yRoomOne && yRoomOne < yRoomTwo;
    }

    public boolean theElementBetweenRooms(String roomNameOne, String roomNameTwo, String roomNameThree) {
        int yRoomTwo = androidElementByTextAndId(roomNameTwo, AndroidLocators.ROOM_NAME).getLocation().getY();
        int yRoomThree = androidElementByTextAndId(roomNameThree, AndroidLocators.ROOM_NAME).getLocation().getY();
        int yRoomOne = androidElementByTextAndId(roomNameOne, AndroidLocators.ROOM_NAME).getLocation().getY();
        return yRoomTwo < yRoomOne && yRoomOne < yRoomThree;
    }

    public boolean theElementUnderTheRoomsInTheSection(String roomNameOne, String roomNameTwo, String section) {
        int yRoomTwo = androidElementByTextAndId(roomNameTwo, AndroidLocators.ROOM_NAME).getLocation().getY();
        int ySection = androidElementByTextAndId(section, AndroidLocators.CHANNEL_NAME_ID).getLocation().getY();
        int yRoomOne = androidElementByTextAndId(roomNameOne, AndroidLocators.ROOM_NAME).getLocation().getY();
        return yRoomTwo < yRoomOne && ySection < yRoomOne;
    }

    public boolean theElementBetweenSectionAndUser(String userNameOne, String section, String userNameTwo) {
        int ySection = androidElementByTextAndId(section, AndroidLocators.ADMINISTRATION_BLOCK).getLocation().getY();
        int yUserTwo = androidElementByTextAndId(userNameTwo, AndroidLocators.USER_NAME).getLocation().getY();
        int yUserOne = androidElementByTextAndId(userNameOne, AndroidLocators.USER_NAME).getLocation().getY();
        return ySection < yUserOne && yUserOne < yUserTwo;
    }

    public boolean theRoleIsPresentedBetweenUsernameAndUserFullName(String role, String userName, String userFullName) {
        int xUserName = androidElementByTextAndId(userName, AndroidLocators.USER_NAME).getLocation().getX();
        int xUserFullName = androidElementByTextAndId(userFullName, AndroidLocators.USER_FULL_NAME).getLocation().getX();
        int xRole = androidElementByTextAndId(role, AndroidLocators.USER_ROLE).getLocation().getX();
        return xUserName < xRole && xRole < xUserFullName;
    }

    public boolean theUserIsPresentedUnderSectionAndUser(String userNameOne, String section, String userNameTwo) {
        int ySection = androidElementByTextAndId(section, AndroidLocators.ADMINISTRATION_BLOCK).getLocation().getY();
        int yUserNameTwo = androidElementByTextAndId(userNameTwo, AndroidLocators.USER_NAME).getLocation().getY();
        int yUserNameOne = androidElementByTextAndId(userNameOne, AndroidLocators.USER_NAME).getLocation().getY();
        return ySection < yUserNameOne && yUserNameTwo < yUserNameOne;
    }

    public boolean theRoomAppearsInTheRoomMembersSearchResult(String userName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.USER_NAME_XPATH.replace("$1", userName))));
        return $(AndroidLocators.USER_NAME_XPATH.replace("$1", userName)).isDisplayed();
    }

    public boolean messageMarkedAs(String messageText, String element) {
        int yElement = androidElementByTextAndId(element, AndroidLocators.PINNED_STARRED_ID).getLocation().getY();
        int yMessage = androidElementByTextAndId(messageText, AndroidLocators.MESSAGE_CONTENT_TEXT).getLocation().getY();
        return yElement < yMessage;
    }

    public boolean verifyThatTheRadioButtonByXpathIsSelected(String buttonName) {
        return $(AndroidButtonsLocators.PUBLIC_OR_PRIVATE_CHANNEL_XPATH.replace("$1", buttonName)).getAttribute("checked").equals("true");
    }

    public boolean verifyThatTheUserNameIsPresentedInTheRoomMembersScreen(String userName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.USER_NAME_XPATH.replace("$1", userName))));
        return $(AndroidLocators.USER_NAME_XPATH.replace("$1", userName)).isVisible();
    }

    public boolean verifyThatTheUsersRoleIsPresentedOnTheRightUserName(String role, String userName) {
        int xUserName = androidElementByTextAndId(userName, AndroidLocators.USER_NAME).getLocation().getX();
        int xRole = androidElementByTextAndId(role, AndroidLocators.USER_ROLE).getLocation().getX();
        return xUserName < xRole;
    }
}
