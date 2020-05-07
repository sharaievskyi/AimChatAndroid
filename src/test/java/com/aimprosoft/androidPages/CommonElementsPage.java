package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidFieldLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import com.aimprosoft.myDriver.appium.core.models.LocatorsReflection;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

import static com.aimprosoft.locators.AndroidLocators.ELEMENT_WITH_TEXT_XPATH;

public class CommonElementsPage extends MobilePageObject {

    public CommonElementsPage(WebDriver driver) { super(driver);}

    private String getFieldLocator(String fieldName) {
        return LocatorsReflection.getSelector(AndroidFieldLocators.class.getName(), fieldName);
    }

    private String getButtonLocator(String buttonName) {
        return LocatorsReflection.getSelector(AndroidButtonsLocators.class.getName(), buttonName);
    }

    private String getAndroidLocator(String elementName) {
        return LocatorsReflection.getSelector(AndroidLocators.class.getName(), elementName);
    }

    public boolean verifyThatTheWidgetWithTheTextIsPresented(String widgetText) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(ELEMENT_WITH_TEXT_XPATH.replace("$1", widgetText))));
        return androidElementByText(widgetText).isDisplayed();
    }

    public boolean verifyThatTheWidgetWithTheTextAndIdIsPresented(String id, String text) {
        return androidElementByTextAndId(text, getAndroidLocator(id)).isDisplayed();
    }

    public boolean verifyThatTheWarningIsDisplayed (String warningMessage) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.className("android.widget.TextView")));
        return androidElementByText(warningMessage).isDisplayed();
    }

    public void enterTheValueInTheElement(String valueToEnter, String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        $$(getFieldLocator(fieldName)).sendKeys(valueToEnter);
    }

    public void clickOnTheButton(String buttonId) {
        $$(getButtonLocator(buttonId)).click();
    }

    public void tapOnTheLink(String linkName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.className("android.widget.TextView")));
        tap(androidElementByText(linkName));
    }

    public boolean verifyThatTheButtonIsDisabled(String buttonName) {
        return $$(getButtonLocator(buttonName)).isEnabled();
    }

    public void hideTheKeyboard() {
        tapOnBackButton();
    }

    public void swipeFromLeftToRight() {
        horizontalSwipeFromLeftToRight();
    }

    public void swipeFromRightToLeft() {
        horizontalSwipeFromRightToLeft();
    }

    public void tapOnTheElementByText(String elementName) {
        tap(androidElementByText(elementName));
    }

    public boolean verifyThatTheRoomWithNameIsPresented(String roomName) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_TITLE_NAME_XPATH.replace("$1", roomName))));
        return androidElementByTextAndId(roomName, AndroidLocators.ROOM_TITLE_NAME_ID).isDisplayed();
    }

    public boolean verifyThatTheDirectRoomWithNameIsPresented(String directRoomName) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.DIRECT_ROOM_NAME_XPATH.replace("$1", directRoomName))));
        return androidElementByTextAndId(directRoomName, AndroidLocators.DIRECT_ROOM_NAME_ID).isDisplayed();
    }

    public void longTapOnTheElementByText(String elementName) {
        longTap(androidElementByText(elementName));
    }

    public void tapOnTheBackButton() {
        tap($$(AndroidButtonsLocators.BACK_BTN));
    }

    public boolean theSliderIsTurned(String sliderId, String value) {
        return $$(getButtonLocator(sliderId)).getText().equals(value);
    }

    public boolean verifyThatTheElementByTextIsChecked(String elementByText) {
        return $(AndroidButtonsLocators.MUTE_TIME_BUTTON.replace("$1", elementByText)).getAttribute("checked").equals("true");
    }

    public void tapOnTheMoreOptionButton() {
        tap($$(AndroidButtonsLocators.MORE_OPTION_BTN));
    }

    public void changeTheTextInTheField(String valueToEnter, String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        if ($(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).isVisible()) {
            $(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).click();
        }
        $$(getFieldLocator(fieldName)).clear();
        $$(getFieldLocator(fieldName)).sendKeys(valueToEnter);
    }

    public boolean verifyThatTheElementByIdIsPresented(String elementId) {
        return $$(getAndroidLocator(elementId)).isDisplayed();
    }

    public void tapOnTheElementByTextAndId(String text, String id) {
        tap(androidElementByTextAndId(text,id));
    }

    public void tapOnTheAndroidWidgetImageViewButton() {
        $(AndroidButtonsLocators.REACTION_BTN).click();
    }

    public boolean verifyThatTheWidgetWithTheTextIsNotPresented(String widgetText) {
        return $(ELEMENT_WITH_TEXT_XPATH.replace("$1", widgetText)).isCurrentlyVisible();
    }

    public void clearTheField(String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        if ($(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).isVisible()) {
            $(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).click();
        }
        $$(getFieldLocator(fieldName)).clear();
    }

    public boolean messageIsSharedToTheRoom(String messageText) {
        scrollDown();
        return $(AndroidLocators.SHARE_MESSAGE_CONTAINER_XPATH).isVisible() && $(AndroidLocators.SHARE_MESSAGE_TEXT_XPATH.replace("$1", messageText)).isVisible();
    }

    public void tapOnTheRadioButton(String buttonName) {
        $(AndroidButtonsLocators.RADIO_BUTTON.replace("$1", buttonName)).click();
    }

    public boolean verifyThatTheRadioButtonIsChecked(String elementByText) {
        return $(AndroidButtonsLocators.RADIO_BUTTON.replace("$1", elementByText)).getAttribute("checked").equals("true");
    }

    public void waitWhileInputFieldWouldBePresented() {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidFieldLocators.INPUT_FIELD_XPATH)));
    }


    public void longTapOnThe(String elementId) {
        longTap($$(getButtonLocator(elementId)));
    }

    public void tapOnTheElementById(String elementId) {
        $$(getAndroidLocator(elementId)).click();
    }

    public boolean verifyThatTheDetailsScreenIsOpened(String screenName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.DETAILS_SCREEN_XPATH.replace("$1", screenName))));
        return $(AndroidLocators.DETAILS_SCREEN_XPATH.replace("$1", screenName)).isVisible();
    }

    public boolean verifyThatTheTheMessageWasSent(String messageText) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", messageText))));
        return $(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", messageText)).isVisible();
    }
}