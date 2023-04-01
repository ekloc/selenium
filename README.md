# Using containers to run Selenium tests
Attempt to make selenium tests run in containers

## Attempt 1
Using Selenium Python bindings to write sample functional/acceptance tests using Selenium WebDriver.  See the [documentation](https://selenium-python.readthedocs.io/)

The code for it is in py-test folder

### `Warning`
> I run into the issue with selenium/standalone-chrome image.  
> I found [this](ttps://github.com/SeleniumHQ/docker-selenium/issues/1677) issue logged in SeleniumHQ project that made me change the selenium runner to seleniarm/standalone-chromium instead of selenium/standalone-chrome
> It's a temporary workaround.  The issue was narrowed down to [AppArmour](https://docs.docker.com/engine/security/apparmor/). The best solution at this point is to disable AppArmour for the selenium-standalone Docker container or to disbale for Docker itself. 
>  I will look into it later



## Attempt 2
Running Selenium tests with the help of [Robot Framework](https://robotframework.org/)

