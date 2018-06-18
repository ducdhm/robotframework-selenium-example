# Robot Framework + Selenium example
This is step by step guild-line to help you:
 * Setup environment for Robot Framework and Selenium
 * Setup text editor for editing test cases
 * Run a simple test case

**Note**: I'll use Sublime Text 3 instead of Ride. Because it's just my favourite text editor.  

## I. Pre-requirement
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
 
## II. Text Editor or IDE for Robot Framework
### 1. Ride
You can follow [this guide](https://github.com/robotframework/RIDE/wiki) to setup Ride Editor

### 2. Sublime Text 3
 1. Download and install Sublime Text 3 at [here](https://www.sublimetext.com/3)
 2. After installing Sublime Text 3, please install `Package Control` for it at [this link](https://packagecontrol.io/installation)
 3. Restart Sublime Text 3
 4. Press `Ctrl` + `Shift` + `P`
 5. Type `pi` and choose `Package Control: Install Package`
 6. When install dialog is showed up, type `robotframe` and choose `Robot Framework Assistant`
 7. Select menu `File > Open Folder...` and then select your folder
 8. Let's rock and roll!

## III. Run example
```
robot -d log test-cases
```

## IV. Selenium Keywords
Please view them at [here](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Create%20Webdriver)

## V. License
Please read at https://github.com/ducdhm/robotframework-selenium-example/blob/master/LICENSE.md