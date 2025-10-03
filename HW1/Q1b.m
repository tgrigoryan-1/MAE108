% Question 1 Part b of HW 1 for MAE 108 Fall 25
close all, clear

% Move to directory where the data is downloaded
cd('C:\Users\tigrr\Downloads')

% Load the data
load('SD_temperature.dat')

% Create vectors to hold data needed
tempAll = SD_temperature(:,2:end);

% Create histogram figure with bin width of 1 degree
figure(1), boxplot(tempAll)
xlabel('Months in Number Form')
ylabel('Temperature (F)')
months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
xticklabels(months)
title('Months vs Temp (F) Box Plot')

cd('C:\Users\tigrr\UCSD\MAE108\HW1')