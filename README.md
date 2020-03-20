# ThorlabsCameraGUI
## Interface for Thorlabs scientific camera

This project was created using MATLAB's app designer, and the code can be found in [this file](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/ThorlabsScientificCameraInterface.mlapp). Here is an initial look at the GUI:

![GUI](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/GUI_View.PNG)

### Before Data Collection
Before capturing frames, the user can change a number of settings to suit their needs. Besides the exposure time of the camera, the region of interest (ROI), the binning settings, and whether the camera should be triggered internally (software) or externally (hardware), the user can also specify the total number of  frames to acquire, the number of frames to average over during acquisition, and whether to apply background correction and normalization. These features are explained below.

Using the settings shown in the figure above, the program will capture 1000 total frames, but it will store and display to the axes just 10 images - the average of each 100 frames captured. The figure below shows the program during image acquisition. The average of frames 200-300 are displayed on the axes. 

![Acquisition](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/Acquisition.PNG)

Background correction and normalization transforms the images acquired according the the equation:

![BCN Equation](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/BCN_Equation.gif)

where S is the transformed image, s is the scale factor (user definable), R is the raw image, and B and N are the background and normalization images, which can be acquired beforehand or loaded from the [BCN.mat file](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/BCN.mat). Raw image data can later be recovered using the inverse equation. If the user wishes to use the background correction and normalization feature, they can run a test beforehand by clicking the "Test" button to ensure that all is working properly. The test calculates the number of pixels in error - pixels (x,y) for which (1) B(x,y) > N(x,y) and R(x,y) > B(x,y) (2) B(x,y) > R(x,y) and N(x,y) > B(x,y), and (3) B(x,y) > R(x,y) and B(x,y) > N(x,y) - and fails if the proportion of pixels in error is greater than the error tolerance value defined by the user. The lamp next to the test button indicates the status of the test: yellow: test has not yet been run, green: test has passed, red: test has failed.

### After Data Collection
The "Next" and "Previous" buttons allow the user to browse the acquired images.

The user has the option to change the region of interest settings after data collection. To do so, they can simply input new settings into the relevant fields and click the "Set ROI and Bin" button. The program will then draw the specified ROI on the axes as a red rectangle, as shown in the figure below:
![ROI Update](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/ROI_update.PNG)

The user will also have the option to apply or undo background correction and normalization for all acquired images.

Clicking the "Save Images" button allows the user to save to their directory the acquired images (cropped to match the specified ROI) and the ROI and bin settings, along with the exposure time and background and normalization images used during the acquisition. If the user has not specified a new ROI since the acquisition, they will also have the chance to do so after clicking the "Save Images" button. After confirming that they'd like to do so in a dialogue box, a figure will appear on which the user can drag the mouse to draw their desired ROI: 
![Draw ROI Prompt](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/Draw_ROI_prompt.PNG)

The user can discard the acquired images and prepare for a new acquisition by clicking the "Clear Figure Window" button.

Finally [a MATLAB script] (https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/UnpackValues.m) is provided to unpack images and image settings stored to the directory.
