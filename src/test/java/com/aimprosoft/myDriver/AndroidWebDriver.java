package com.aimprosoft.myDriver;

import com.aimprosoft.myDriver.appium.AppiumDriverService;
import com.aimprosoft.utils.PropertiesUtils;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;
import net.thucydides.core.webdriver.DriverSource;
import org.openqa.selenium.Capabilities;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.io.File;
import java.util.Properties;

import static com.aimprosoft.myDriver.appium.core.Selectors.elementByIdOrClassName;

public class AndroidWebDriver implements DriverSource {

    private static AndroidDriver driver;

    @Override
    public AndroidDriver newDriver() {
        AppiumDriverService service = new AppiumDriverService();
        Capabilities capabilities = getCapabilities();
        driver = new AndroidDriver(service.getBuilder(), capabilities);
        return driver;
    }

    @Override
    public boolean takesScreenshots() {
        return true;
    }

    public static DesiredCapabilities getCapabilities() {
        Properties properties = PropertiesUtils.getProperties("android.properties");

        File classpathRoot = new File(System.getProperty("user.dir"));
        File appDir = new File(classpathRoot, "src/test/resources/apps");
        File app = new File(appDir, properties.getProperty("apk.name"));

        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability(MobileCapabilityType.APPIUM_VERSION, properties.getProperty("appium.version"));
        capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, properties.getProperty("android.platform.name"));
        capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, properties.getProperty("device.name"));
        capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, properties.getProperty("device.version"));
        capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, properties.getProperty("automationName"));
        capabilities.setCapability(MobileCapabilityType.APP, app.getAbsolutePath());
        capabilities.setCapability("appWaitPackage", "com.aimprosoft.aimchat");
        capabilities.setCapability("appWaitActivity", "*");
        return capabilities;
    }

    public static MobileElement mobileElement(String idOrClassName) {
        return elementByIdOrClassName(driver, idOrClassName);
    }

    public static AndroidDriver driver() {
        return driver;
    }
}