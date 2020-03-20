# ThorlabsCameraGUI
Interface for Thorlabs scientific camera

This project was created using MATLAB's app designer, and the code can be found in the ThorlabsScientificCameraInterface.mlapp file. Here is an initial look at the GUI:

![GUI](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/GUI_View.PNG)

Before capturing frames, the user can change a number of settings to suit their needs. Besides the exposure time of the camera, the region of interest, the binning settings, and whether the camera should be triggered internally (software) or externally (hardware), the user can also specify the total number of  frames to acquire, the number of frames to average over during acquisition, and whether to apply background correction and normalization. 

Using the settings shown in the figure above, the program will capture 1000 total frames, but it will store and display to the axes just 10 images - the average of each 100 frames captured. The figure below shows the program during image acquisition. The average of frames 200-300 are displayed on the axes. 

![Acquisition](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/Acquisition.PNG)

Background correction and normalization transforms the images acquired according the the equation:

![BCN Equation](https://github.com/SamNadjari/ThorlabsCameraGUI/blob/master/images/BCN_Equation.gif)

where S is the transformed image, s is the scale factor (user definable), R is the raw image, and B and N are the background and normalization images, which can be acquired beforehand or loaded from the BCN.mat file. Raw image data can later be recovered using the inverse equation. If the user wishes to use the background correction and normalization feature, they can run a test beforehand to ensure that all is working properly. 

