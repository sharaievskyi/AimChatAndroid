package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidFieldLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

public class LeftDrawerPage extends MobilePageObject {

    public LeftDrawerPage (WebDriver driver) {
        super(driver);
    }

    public void subscribeToTheRoom(String elementName) {
        horizontalSwipeFromLeftToRight();
        tap(androidElementByTextAndId("ROOMS", "channelName"));
        tap(androidElementByText(elementName));
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidButtonsLocators.JOIN)));
        tap($$(AndroidButtonsLocators.JOIN));
    }

    public void addTheDirectInTheRecentDirectList(String elementName) {
        horizontalSwipeFromLeftToRight();
        tap(androidElementByTextAndId("RECENT DIRECTS", "channelName"));
        tap(androidElementByText(elementName));
    }

    public void createThePrivateRoom(String elementName) {
        horizontalSwipeFromLeftToRight();
        tap(androidElementByTextAndId("ROOMS", "channelName"));
        tap($$(AndroidButtonsLocators.CREATE_ROOM));
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidButtonsLocators.PRIVATE_CHANNEL)));
        tap($$(AndroidButtonsLocators.PRIVATE_CHANNEL));
        tap($$(AndroidFieldLocators.CREATE_ROOM_NAME));
        $$(AndroidFieldLocators.CREATE_ROOM_NAME).sendKeys(elementName);
        tap($$(AndroidButtonsLocators.APPLY_CREATION));
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidLocators.TOOLBAR_ID)));
    }

    public boolean theTabIsSelected(String tabName) {
        return androidElementByText(tabName).isSelected();
    }

    public void tapOnTheSearchSign() {
        $$(AndroidLocators.ACTION_SEARCH).click();
    }

    public boolean verifyTheListThatContainsItemWithText(String word) {
        return androidElementByTextAndId(word, AndroidLocators.ROOM_NAME).isDisplayed();
    }

    public boolean theRoomDoesNotAppearInTheSearchResult(String word) {
        return $(AndroidLocators.BROWSE_ROOMS_LIST_XPATH.replace("$1", word)).isCurrentlyVisible();
    }

    public boolean thePopUpMenuIsOpened(String elementName) {
        return androidElementByTextAndId(elementName, AndroidLocators.MUTE_TITLE).isDisplayed();
    }

    public boolean verifyThatTheLeftDrawerDoesNotContainsElement(String word) {
        return $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", word)).isCurrentlyVisible();
    }

    public boolean verifyThatTheTitleIsPresentInTheLeftDrawer(String channelName) {
        return androidElementByTextAndId(channelName, AndroidLocators.CHANNEL_NAME_ID).isDisplayed();
    }

    public boolean verifyThatTheTitleIsNotPresentInTheLeftDrawer(String channelName) {
        return $(AndroidLocators.CHANNEL_NAME_XPATH.replace("$1", channelName)).isCurrentlyVisible();
    }

    public boolean leftDrawerIsOpened() {
        withTimeoutOf(30, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidLocators.LEFT_DRAWER)));
        return $$(AndroidLocators.LEFT_DRAWER).isDisplayed();
    }

    public boolean theRoomIsPresentedInTheLeftDrawer(String roomName) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_LEFT_DRAWER_XPATH)));
        androidElementByText(roomName).isDisplayed();
        return $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isDisplayed();
    }

    public boolean theRoomIsPresentedInTheBrowseRoomsSearchResult(String roomName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.BROWSE_ROOMS_LIST_XPATH.replace("$1", roomName))));
        return $(AndroidLocators.BROWSE_ROOMS_LIST_XPATH.replace("$1", roomName)).isDisplayed();
    }

    public boolean theRoomIsNotPresentedInTheBrowseRoomsSearchResult(String roomName) {
        return $(AndroidLocators.BROWSE_ROOMS_LIST_XPATH.replace("$1", roomName)).isCurrentlyVisible();
    }

    public boolean theUserIsPresentedInTheStartDirectSearchResult(String userName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.USER_NAME_XPATH.replace("$1", userName))));
        return $(AndroidLocators.USER_NAME_XPATH.replace("$1", userName)).isDisplayed();
    }

    public boolean theRoomIsNotPresentedInTheLeftDrawer(String roomName) {
        return $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isCurrentlyVisible();
    }

    public boolean verifyThatTheRadioButtonIsClickable(String buttonName) {
        return $(AndroidButtonsLocators.PUBLIC_OR_PRIVATE_CHANNEL_XPATH.replace("$1", buttonName)).getAttribute("clickable").equals("true");
    }

    public boolean verifyThatThePopUpMenuIsOpenedInTheLeftDrawer() {
        return $(AndroidLocators.CONTENT_POP_UP_MENU_XPATH).isDisplayed();
    }

    public void tapOnTheRoomInTheLeftDrawer(String roomName) {
        $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).click();
    }
}
