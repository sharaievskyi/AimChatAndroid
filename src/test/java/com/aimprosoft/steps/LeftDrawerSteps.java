package com.aimprosoft.steps;

import com.aimprosoft.steps.serenity.LeftDrawerUserSteps;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class LeftDrawerSteps {

    @Steps
    LeftDrawerUserSteps steps;

    @Given("subscribe to the {string} public room")
    public void subscribeToThePublicRoom(String elementName) {
        steps.subscribeToTheRoom(elementName);
    }

    @Given("add the direct {string} in the Recent Direct list")
    public void addTheDirectInTheRecentDirectList(String elementName) {
        steps.addTheDirectInTheRecentDirectList(elementName);
    }

    @Given("create the {string} private room")
    public void createThePrivateRoom(String elementName) {
        steps.createThePrivateRoom(elementName);
    }

    @Then("the {string} tab is selected")
    public void theTabIsSelected(String tabName) {
        steps.theTabIsSelected(tabName);
    }

    @And("tap on the Search sign")
    public void tapOnTheSearchSign() {
        steps.tapOnTheSearchSign();
    }

    @Then("the {string} room appears in the left drawer search result")
    public void theRoomAppearsInTheLeftDrawerSearchResult(String roomName) {
        steps.theRoomIsPresentedInTheLeftDrawerSearchResult(roomName);
    }

    @Then("the {string} room is deleted from left drawer")
    public void theRoomIsDeletedFromLeftDrawer(String word) {
        steps.verifyThatTheLeftDrawerDoesNotContainsElement(word);
    }

    @Then("the {string} room does not appear in the search result")
    public void theRoomDoesNotAppearInTheSearchResult(String word) {
        steps.theRoomDoesNotAppearInTheSearchResult(word);
    }

    @Then("the {string} pop-up menu is opened")
    public void thePopUpMenuIsOpened(String elementName) {
        steps.thePopUpMenuIsOpened(elementName);
    }

    @Then("the {string} title is present")
    public void theTitleIsPresent(String channelName) {
        steps.verifyThatTheTitleIsPresentInTheLeftDrawer(channelName);
    }

    @Then("the {string} title is not present")
    public void theTitleIsNotPresent(String channelName) {
        steps.verifyThatTheTitleIsNotPresentInTheLeftDrawer(channelName);
    }

    @Then("Left Drawer is opened")
    public void leftDrawerIsOpened() {
        steps.leftDrawerIsOpened();
    }

    @Then("the {string} room is presented in the left drawer")
    public void theRoomIsPresentedInTheLeftDrawer(String roomName) {
        steps.theRoomIsPresentedInTheLeftDrawerSearchResult(roomName);
    }

    @Then("the {string} room appears in the Browse rooms search result")
    public void theRoomAppearsInTheBrowseRoomsSearchResult(String roomName) {
        steps.theRoomIsPresentedInTheBrowseRoomsSearchResult(roomName);
    }

    @Then("the {string} room does not appear in the Browse rooms search result")
    public void theRoomDoesNotAppearInTheBrowseRoomsSearchResult(String roomName) {
        steps.theRoomIsNotPresentedInTheBrowseRoomsSearchResult(roomName);
    }

    @Then("the {string} user appears in the Start direct search result")
    public void theUserAppearsInTheStartDirectSearchResult(String userName) {
        steps.theUserIsPresentedInTheStartDirectSearchResult(userName);
    }

    @Then("the {string} room is not presented in the left drawer")
    public void theRoomIsNotPresentedInTheLeftDrawer(String roomName) {
        steps.theRoomIsNotPresentedInTheLeftDrawer(roomName);
    }

    @Then("the {string} radio-button is clickable")
    public void theRadioButtonIsClickable(String buttonName) {
        steps.verifyThatTheRadioButtonIsClickable(buttonName);
    }

    @Then("pop-up menu is opened in the Left drawer")
    public void popUpMenuIsOpenedInTheLeftDrawer() {
        steps.verifyThatThePopUpMenuIsOpenedInTheLeftDrawer();
    }

    @When("tap on the {string} room in the left drawer")
    public void tapOnTheRoomInTheLeftDrawer(String roomName) {
        steps.tapOnTheRoomInTheLeftDrawer(roomName);
    }
}
