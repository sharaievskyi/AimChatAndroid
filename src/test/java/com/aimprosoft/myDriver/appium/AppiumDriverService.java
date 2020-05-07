package com.aimprosoft.myDriver.appium;

import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServerHasNotBeenStartedLocallyException;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;
import java.net.URL;

public class AppiumDriverService {

    private static AppiumDriverLocalService service;

    public void startAppium() {
        AppiumServiceBuilder builder = getBuilder();
        service = builder.build();
        service.start();

        if (service == null || !service.isRunning()) {
            throw new AppiumServerHasNotBeenStartedLocallyException(
                    "An appium server node is not started!");
        }
    }

    public void stopAppium() {
        if (service != null) {
            service.stop();
        }
    }

    public URL getAppiumUrl() {
        return service.getUrl();
    }

    public AppiumServiceBuilder getBuilder() {
        return new AppiumServiceBuilder().
                withArgument(GeneralServerFlag.LOG_LEVEL, "info").
                usingAnyFreePort().
                withIPAddress("127.0.0.1");
    }
}
