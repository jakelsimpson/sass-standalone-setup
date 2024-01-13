# sass-standalone-setup
Small script used to help setup and install SASS on a MAC with Intel without using nodes.

## How to use

- Download Sass from GitHub [here](https://github.com/sass/dart-sass/releases/download/1.69.7/dart-sass-1.69.7-macos-x64.tar.gz)
  - This is the version for Mac Intel
- Download the sass_setup.sh script
- Open sass_setup.sh in the terminal
- Then run ``chmod +x ./sass_setup.sh`` to make this file executable
- Then run the script to move SASS to the bin and set sass in path to work in terminal
  - **Sample** ``./sass_setup.sh ~/Downloads/dart-sass dart-sass``
  - ``~/Downloads/dart-sass`` is the unzipped sass directory location
  - ``dart-sass`` is the name of the actual directory being moved
- Close the terminal and open a new terminal
- Test by running ``sass --version`` in the terminal
