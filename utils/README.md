Creating a PDF
==============

Requirements
------------

The required packages to have installed on Linux can be found using apt-get:
```
sudo apt-get install scrot xdotool pdftk
```

Instructions
------------

Follow these steps to create your presentation:
1) Firstly, you should create the screenshots following the instructions after launching this script:
```
./take_screenshots.sh
```
2) After letting the program take the screenshots,  you have to go through the screenshots folder and delete all those that were taken after finishing the presentation.

3) Launching the final script to ammend:
```
./create_pdf.sh
```
You should find now in the main folder a `presentation.pdf` file with the presentation file.

License
-------

These scripts are licensed under GPLv3+. A copy of the license can be found in doc/GPL3txt.
