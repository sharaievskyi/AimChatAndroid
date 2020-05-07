package com.aimprosoft.steps;

import com.aimprosoft.steps.serenity.CommonUserSteps;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class CommonSteps {

    @Steps
    CommonUserSteps steps;

    @Then("the {string} screen is opened")
    public void theScreenIsOpened(String widgetText) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(widgetText);
    }

    @Then("{string} alert is displayed")
    public void alertIsDisplayed(String warningMessage) {
        steps.verifyThatTheWarningIsDisplayed(warningMessage);
    }

    @And("enter {string} in the {string} input field")
    public void enterInTheInputField(String valueToEnter, String elementName) {
        steps.enterTheValueInTheElement(valueToEnter, elementName);
    }

    @When("tap on the {string} button")
    public void tapOnTheButton(String buttonId) {
        steps.clickOnTheButton(buttonId);
    }

    @When("tap on the {string} link")
    public void tapOnTheLink(String linkName) {
        steps.tapOnTheLink(linkName);
    }

    @Then("the {string} button is disabled")
    public void theButtonIsDisabled(String buttonName) {
        steps.verifyThatTheButtonIsDisabled(buttonName);
    }

    @And("hide the keyboard")
    public void hideTheKeyboard() {
        steps.hideTheKeyboard();
    }

    @When("swipe from left to right")
    public void swipeFromLeftToRight() {
        steps.swipeFromLeftToRight();
    }

    @When("swipe from right to left")
    public void swipeFromRightToLeft() {
        steps.swipeFromRightToLeft();
    }

    @And("tap on the {string} room")
    public void tapOnTheRoom(String elementName) {
        steps.tapOnTheElementByText(elementName);
    }

    @Then("the {string} room is opened")
    public void theRoomIsOpened(String roomName) {
        steps.verifyThatTheRoomWithNameIsPresented(roomName);
    }

    @Then("the {string} direct room is opened")
    public void theDirectRoomIsOpened(String directRoomName) {
        steps.verifyThatTheDirectRoomWithNameIsPresented(directRoomName);
    }

    @And("wait while results are refreshed")
    public void waitWhileResultsAreRefreshed() {
        steps.waitWhileResultsAreRefreshed();
    }

    @When("use long tap on the {string} room")
    public void useLongTapOnTheRoom(String elementName) {
        steps.longTapOnTheElementByText(elementName);
    }

    @And("tap on the {string} title")
    public void tapOnTheTitle(String linkName) {
        steps.tapOnTheElementByText(linkName);
    }

    @And("tap on the {string} tab")
    public void tapOnTheTab(String linkName) {
        steps.tapOnTheElementByText(linkName);
    }

    @And("tap on {string} message in chat history")
    public void tapOnMessageInChatHistory(String text) {
        steps.tapOnTheElementByText(text);
    }

    @And("tap on the Back button")
    public void tapOnTheBackButton() {
        steps.tapOnTheBackButton();
    }

    @Then("the {string} details screen is opened")
    public void theDetailsScreenIsOpened(String screenName) {
        steps.verifyThatTheDetailsScreenIsOpened(screenName);
    }

    @And("tap on the {string} user from Start direct list")
    public void tapOnTheUserFromStartDirectList(String userName) {
        steps.tapOnTheElementByText(userName);
    }

    @When("tap on the {string} slider")
    public void tapOnTheSlider(String sliderId) {
        steps.clickOnTheButton(sliderId);
    }

    @Then("message {string} is shared to the room")
    public void messageIsSharedToTheRoom(String messageText) {
        steps.messageIsSharedToTheRoom(messageText);
    }

    @When("tap on the {string} list")
    public void tapOnTheList(String elementName) {
        steps.tapOnTheElementByText(elementName);
    }

    @Then("the message {string} sent")
    public void theMessageIsSent(String messageText) {
        steps.verifyThatTheTheMessageWasSent(messageText);
    }

    @And("tap on the {string} quantity")
    public void tapOnTheQuantity(String timeValue) {
        steps.tapOnTheElementByText(timeValue);
    }

    @Then("the {string} slider is turned {string}")
    public void theSliderIsTurned(String sliderId, String value) {
        steps.theSliderIsTurned(sliderId, value);
    }

    @When("tap on the {string} radio button")
    public void tapOnTheRadioButton(String buttonName) {
        steps.tapOnTheRadioButton(buttonName);
    }

    @Then("the remaining time is set for {string}")
    public void theRemainingTimeIsSetFor(String elementByText) {
        steps.verifyThatTheElementByTextIsChecked(elementByText);
    }

    @Then("mute all chat for {string} function is canceled")
    public void muteAllChatForFunctionIsCanceled(String elementByText) {
        steps.verifyThatTheElementByTextIsNotChecked(elementByText);
    }

    @Then("the {string} status is saved")
    public void theStatusIsSaved(String elementByText) {
        steps.verifyThatTheRadioButtonIsChecked(elementByText);
    }

    @Then("message {string} is present")
    public void messageIsPresent(String messageText) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(messageText);
    }

    @When("tap on the More option button")
    public void tapOnTheMoreOptionButton() {
        steps.tapOnTheMoreOptionButton();
    }

    @When("change message to {string} in the field {string}")
    public void changeMessageTo(String valueToEnter, String fieldName) {
        steps.changeTheTextInTheField(valueToEnter, fieldName);
    }

    @When("long tap on the {string} input field")
    public void longTapOnTheInputField(String fieldName) {
        steps.longTapOnTheElementByText(fieldName);
    }

    @Then("the {string} panel is present")
    public void thePanelIsPresent(String elementId) {
        steps.verifyThatTheElementByIdIsPresented(elementId);
    }

    @When("select {string} {string} reaction")
    public void selectReaction(String text, String id) {
        steps.tapOnTheElementByTextAndId(text, id);
    }

    @Then("reaction {string} is added")
    public void reactionIsAdded(String text) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(text);
    }

    @When("tap on the reaction button")
    public void tapOnTheReactionButton() {
        steps.tapOnTheAndroidWidgetImageViewButton();
    }

    @When("tap on the {string} reaction")
    public void tapOnTheReaction(String text) {
        steps.tapOnTheElementByText(text);
    }

    @Then("reaction {string} is deleted")
    public void reactionIsDeleted(String text) {
        steps.verifyThatTheWidgetWithTheTextIsNotPresented(text);
    }

    @Then("the {string} pop-up menu is present")
    public void thePopUpMenuIsPresent(String widgetText) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(widgetText);
    }

    @Then("message {string} is deleted")
    public void messageIsDeleted(String widgetText) {
        steps.verifyThatTheWidgetWithTheTextIsNotPresented(widgetText);
    }

    @And("long tap on {string} message in chat history")
    public void longTapOnMessageInChatHistory(String text) {
        steps.longTapOnTheElementByText(text);
    }

    @When("tap on the {string} pinned message")
    public void tapOnThePinnedMessage(String messageText) {
        steps.tapOnTheElementByText(messageText);
    }

    @When("tap on the {string} starred message")
    public void tapOnTheStarredMessage(String messageText) {
        steps.tapOnTheElementByText(messageText);
    }

    @When("tap on the {string} uploaded file")
    public void tapOnTheUploadedFile(String messageText) {
        steps.tapOnTheElementByText(messageText);
    }

    @Then("the {string} user disappear in the Room members screen")
    public void theUserDisappearInTheRoomMembersScreen(String userName) {
        steps.verifyThatTheWidgetWithTheTextIsNotPresented(userName);
    }

    @And("change room name to {string} in the field {string}")
    public void changeRoomNameToInTheField(String roomName, String fieldName) {
        steps.changeTheTextInTheField(roomName, fieldName);
    }

    @Then("name {string} of room is present")
    public void nameOfRoomIsPresent(String roomName) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(roomName);
    }

    @When("change description to {string} in the field {string}")
    public void changeDescriptionToInTheField(String description, String fieldName) {
        steps.changeTheTextInTheField(description, fieldName);
    }

    @Then("description {string} of room is present")
    public void descriptionOfRoomIsPresent(String description) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(description);
    }

    @When("tap on the {string} name in the toolbar")
    public void tapOnTheNameInTheToolbar(String roomName) {
        steps.tapOnTheElementByText(roomName);
    }

    @When("clear the field {string}")
    public void clearTheField(String fieldName) {
        steps.clearTheField(fieldName);
    }

    @Then("{string} {string} screen is opened")
    public void ScreenIsOpened(String id, String text) {
        steps.verifyThatTheWidgetWithTheTextAndIdIsPresented(id, text);
    }

    @Then("the message {string} is deleted")
    public void theMessageIsDeleted(String text) {
        steps.verifyThatTheWidgetWithTheTextIsNotPresented(text);
    }

    @Then("the {string} field is present")
    public void theFieldIsPresent(String elementId) {
        steps.verifyThatTheElementByIdIsPresented(elementId);
    }

    @Then("the {string} button is present")
    public void theButtonIsPresent(String elementId) {
        steps.verifyThatTheElementByIdIsPresented(elementId);
    }

    @Then("the {string} keyboard is opened")
    public void theKeyboardIsOpened(String elementId) {
        steps.verifyThatTheElementByIdIsPresented(elementId);
    }

    @When("tap on the {string} text")
    public void tapOnTheText(String text) {
        steps.tapOnTheElementByText(text);
    }

    @Then("{string} notification settings is saved")
    public void notificationSettingsIsSaved(String elementByText) {
        steps.verifyThatTheRadioButtonIsChecked(elementByText);
    }

    @And("tap on the {string} {string}")
    public void tapOnThe(String userName, String userNameId) {
        steps.tapOnTheElementByTextAndId(userName, userNameId);
    }

    @Then("the {string} link is presented")
    public void theLinkIsPresented(String elementName) {
        steps.verifyThatTheWidgetWithTheTextIsPresented(elementName);
    }

    @Then("wait while input field would be presented")
    public void waitWhileInputFieldWouldBePresented() {
        steps.waitWhileInputFieldWouldBePresented();
    }

    @When("long tap on the {string}")
    public void longTapOnThe(String elementId) {
        steps.longTapOnThe(elementId);
    }

    @When("tap on the {string} link in the Right drawer")
    public void tapOnTheLinkInTheRightDrawer(String elementId) {
        steps.tapOnTheElementById(elementId);
    }

    @When("long tap on the {string} username")
    public void longTapOnTheUsername(String elementName) {
        steps.longTapOnTheElementByText(elementName);
    }

    @Then("the {string} user details screen is opened")
    public void theUserDetailsScreenIsOpened(String userName) {
        steps.verifyThatTheDetailsScreenIsOpened(userName);
    }

    @Then("the {string} link is not presented")
    public void theLinkIsNotPresented(String buttonName) {
        steps.verifyThatTheWidgetWithTheTextIsNotPresented(buttonName);
    }
}