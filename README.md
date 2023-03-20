# Search robot

A simple search robot.

## Summary

A simple search robot that uses Google search to search with a given word. The user can choose to either use randomly chosen default word or give a word in the run command.

After the search the robot takes a screenshot of the results.

The project has three versions of the search robot. The first two are written with different languades, first being written with Robot framework and second with Python. The third version is done for mobile. Each version can be found in its own directory.

## Background

This project started as a learning project with Robot Framework and robotic process automation.

## How is it used?

The three versions of the robot are run by different commands.

### Robot framework version

Run with wanted command on command line from the results directory under the robot framework directory under the project's main directory. Create the results-directory if needed. Robot framework creates the output files to the directory it is run from.

Run with a search word from default words list with command ``robot --rpa ..\SearchRobot.robot``.

Run with given word with command ``robot -v SEARCH_WORD:your_word --rpa ..\SearchRobot.robot`` and replace "your_word" with the wanted word.

If the search term contains multiple words, it needs to be inside quotation marks, for example "robot framework".

### Python version

Run the Python robot on command line with ``python search_robot.py`` from the project's python directory.

### Mobile version

Run the mobile robot for android on command line with `` `` from

## What next?

Add more features to the robot
* Add Python version a results report.
* Android version of the robot.

## Acknowledgments

* Do not use code, images, data etc. from others without permission.
