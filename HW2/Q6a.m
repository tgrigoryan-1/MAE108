% Question 6 Part a of HW 2 for MAE 108 Fall 25
close all, clear

% Move to directory where the data is downloaded
cd('C:\Users\tigrr\Downloads')

% Load the data
load('SD_temperature.dat')

% Create vectors to hold data needed
tempAll = SD_temperature(:,2:13);

% Create histogram figure with bin width of 1 degree
figure(1), histogram(tempAll,'BinWidth',1,'Normalization','probability')
xlabel('Temperature (F)')
ylabel('Probability')
title('Temperature vs Probability')

% Move back to directory where the scipt is written
cd('C:\Users\tigrr\UCSD\MAE108\HW2')
