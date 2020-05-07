package com.aimprosoft.steps.serenity;

import com.aimprosoft.androidPages.MessageHistoryPage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.junit.Assert;

public class MessageHistoryUserSteps extends ScenarioSteps {

    MessageHistoryPage messageHistoryPage;

    @Step
    public void theChatHistoryIsOpened() {
        Assert.assertTrue("The chat history is not present", messageHistoryPage.theChatHistoryIsOpened());
    }
    @Step
    public void messageMarkedAs(String elementId) {
        Assert.assertTrue("Message is not marked as " + elementId, messageHistoryPage.messageMarkedAs(elementId));
    }
    @Step
    public void markAsDisappears(String elementId) {
        Assert.assertFalse("Message marked as " + elementId, messageHistoryPage.markAsDisappears(elementId));
    }
    @Step
    public void tapOnTheDeleteButtonInThePopUpMenu() {
        messageHistoryPage.tapOnTheDeleteButtonInThePopUpMenu();
    }
    @Step
    public void tapOnTheCancelButtonInThePopUpMenu() {
        messageHistoryPage.tapOnTheCancelButtonInThePopUpMenu();
    }
    @Step
    public void contentPopUpMenuIsOpened() {
        Assert.assertTrue("Content pop-up menu is not opened", messageHistoryPage.contentPopUpMenuIsOpened());
    }
    @Step
    public void thePopUpMenuIsOpenedInTheMessageDetailsScreen() {
        Assert.assertTrue("Pop-up menu is not presented", messageHistoryPage.thePopUpMenuIsOpenedInTheMessageDetailsScreen());
    }
    @Step
    public void verifyThatTheMessageMarkedAsPinnedBetweenUserNameAndTextMessage(String element, String userName, String textMessage) {
        Assert.assertTrue("", messageHistoryPage.verifyThatTheMessageMarkedAsPinnedBetweenUserNameAndTextMessage(element, userName, textMessage));
    }
    @Step
    public void VerifyThatTheReactionButtonIsPresentedNearAddedReaction(String reactionId) {
        Assert.assertTrue("", messageHistoryPage.theReactionButtonIsPresentedNearAddedReaction(reactionId));
    }
    @Step
    public void alertIsNotPresent(String textAlert) {
        Assert.assertFalse("Alert is displayed", messageHistoryPage.alertIsNotPresent(textAlert));
    }
    @Step
    public void theMessageIsVisible(String textMessage) {
        Assert.assertTrue("Message is not visible", messageHistoryPage.theMessageIsVisible(textMessage));
    }
    @Step
    public void verifyThatTheNewMessageSeparatorIsPresent() {
        Assert.assertTrue("New message separator is not present", messageHistoryPage.verifyThatTheNewMessageSeparatorIsPresent());
    }
    @Step
    public void verifyThatTheSeparatorWithDateIsPresent(String elementName) {
        Assert.assertTrue("Separator with date is not present", messageHistoryPage.verifyThatTheSeparatorWithDateIsPresent(elementName));
    }
    @Step
    public void verifyThatTheSeparatorWithDateIsNotPresent(String elementName) {
        Assert.assertFalse("Separator with date is present", messageHistoryPage.verifyThatTheSeparatorWithDateIsNotPresent(elementName));
    }
}