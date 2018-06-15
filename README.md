# Robot Framework + Selenium example

## Pre-requirement
### 1. Python
Install Python at [here](https://www.python.org/downloads/)

**Note**: Make sure you add Python to `PATH` environment variable 

### 2. Install Robot Framework
```
pip install robotframework
```


### 3. Install Selenium Library
```
pip install --upgrade robotframework-seleniumlibrary
```

### 4. Download Web-drivers

You can download Chrome and Firefox drivers at following links:
 * [Chrome](https://sites.google.com/a/chromium.org/chromedriver/downloads)
 * [Firefox (Gecko)](https://github.com/mozilla/geckodriver/releases)

... or download all web-drivers at [here](https://seleniumhq.github.io/selenium/docs/api/py/index.html#drivers).

### 5. Add Web-drivers to `PATH` environment variable.
 1. After download all web-drivers, please put them in `drivers` folder
 2. Follow [this guide](https://www.java.com/en/download/help/path.xml) to add web-drivers to `PATH` environment variable

## Run example
```
robot -d log test-cases
```

## Selenium Keywords
Please view them at [here](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Create%20Webdriver)