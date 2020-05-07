package com.aimprosoft;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features = {
        "src/test/resources/features/001_Authorization.feature",
        "src/test/resources/features/002_LeftDrawer.feature",
        "src/test/resources/features/003_MessageHistory.feature",
        "src/test/resources/features/004_RightDrawer.feature",
        "src/test/resources/features/005_Toolbar.feature",
        "src/test/resources/features/006_MessageBar.feature"
        })

public class AuthorizationTestSuite {
}
