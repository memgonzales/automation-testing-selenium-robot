# Selenium IDE & RobotFramework Exercise
![badge][badge-selenium]

The objective of this exercise is to introduce students to **automation testing of web applications** using [Selenium IDE](https://www.selenium.dev/selenium-ide/) and [RobotFramework](https://robotframework.org/). 

## Task
This is an exercise in an advanced software engineering class under Ms. Unisse C. Chua of the Department of Software Technology, De La Salle University. The instructions are as follows:

1. Go to [SauceDemo.com](https://www.saucedemo.com/) (this is a dummy/fake website for practicing automation tests).
2. Try out the different username and account combinations to see what happens.
3. Follow the test steps below and record the steps using the Selenium IDE.
4. Add an assertion step based on what you've observed the expected outcome should be (from Step 2). <br/>
   Note: It is not going to be a check on the page title because they do not change the page title. 
5. Save the scripts as an `.SIDE` project for reference for your RobotFramework scripts.
6. Update your initial RobotFramework exercise scripts to have the following test cases below:
   - Successful user log in
   - Unsuccessful user log in by a locked out user
   - Typed wrong password
   - Logged in as problem user and sees a broken inventory page
   - Sort product name (A to Z)
   - Sort product name (Z to A)
   - Sort product price (low to high)
   - Sort product price (high to low)

## Project Structure
This submission contains the following files and directories:

File/Directory | Description
-- | --
<a href = "https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/sauce_demo_selenium_ide.side">`sauce_demo_selenium_ide.side`</a> | `.SIDE` project file (Selenium IDE recordings)
<a href = "https://github.com/memgonzales/stsweng-selenium-robot-exercise/tree/master/tests">`tests`</a> | Folder containing the `.robot` files (RobotFramework)
<a href = "https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/log.html">`log.html`</a><br/><a href = "https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/output.xml">`output.xml`</a><br/><a href = "https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/report.html">`report.html`</a> | Report after running the RobotFramework tests

## Screenshots
The screenshots of the passed Selenium IDE and RobotFramework automated tests are shown below:

<img src="https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/Selenium%20IDE_All%20Cases%20Passed.PNG?raw=True" alt="selenium" width = 750> 

<img src="https://github.com/memgonzales/stsweng-selenium-robot-exercise/blob/master/Robot_All%20Cases%20Passed.PNG?raw=True" alt="selenium" width = 750> 

## Author
- <b>Mark Edward M. Gonzales</b> <br/>
  mark_gonzales@dlsu.edu.ph <br/>
  gonzales.markedward@gmail.com <br/>

[badge-selenium]: https://img.shields.io/badge/Selenium-43B02A?style=flat&logo=Selenium&logoColor=white
