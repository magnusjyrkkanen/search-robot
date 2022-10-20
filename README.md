# Search robot

A simple search robot.

## Summary

A simple search robot that uses Google search to search with a given word. The user can choose to either use randomly chosen default word or give a word in the run command.

After the search the robot takes a screenshot of the results.

The project has two versions of the search robot. One is written with Robot framework and second with Python.

## Background

This project is a learning project with Robot Framework.

## How is it used?

### Robot framework version

Run with wanted command on command line from the results directory under the robot framework directory under the project's main directory. Create the results-directory if needed. Robot framework creates the output files to the directory it is run from.

Run with a search word from default words list with command ``robot --rpa ..\SearchRobot.robot``.

Run with given word with command ``robot -v SEARCH_WORD:your_word --rpa ..\SearchRobot.robot`` and replace "your_word" with the wanted word.

If the search term contains multiple words, it needs to be inside quotation marks, for example "robot framework".

### Python version

## What next?

Add more features to the robot
* Python version of the robot.

## Acknowledgments

* Do not use code, images, data etc. from others without permission.
