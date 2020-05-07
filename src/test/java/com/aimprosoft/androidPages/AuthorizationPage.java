package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidFieldLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import com.aimprosoft.utils.LoginSecureUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

public class AuthorizationPage extends MobilePageObject {

    public AuthorizationPage(WebDriver driver) {
        super(driver);
    }

    public void waitForLogoToAppear() {
        withTimeoutOf(10, TimeUnit.SECONDS).waitFor(ExpectedConditions.visibilityOf($$(AndroidLocators.ENTRANCE_LOGO)));
    }

    public void loginUsingThePropertiesFile() {
        withTimeoutOf(120, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidFieldLocators.YOUR_TEAM_URL)));
        LoginSecureUtils loginSecureUtils = new LoginSecureUtils();
        $$(AndroidFieldLocators.YOUR_TEAM_URL).sendKeys(loginSecureUtils.getUrl());
        $$(AndroidButtonsLocators.CONTINUE).click();
        withTimeoutOf(120, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidFieldLocators.LOGIN)));
        $$(AndroidFieldLocators.LOGIN).sendKeys(loginSecureUtils.getLogin());
        $$(AndroidFieldLocators.PASSWORD).sendKeys(loginSecureUtils.getPassword());
        $$(AndroidButtonsLocators.SIGN_IN).click();
        withTimeoutOf(120, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidLocators.TOOLBAR_ID)));
    }

    public boolean verifyThatTheUserIsLoggedIn() {
        return $$(AndroidLocators.TOOLBAR_ID).isDisplayed();
    }
}
