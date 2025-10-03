% Question 1 Part a of HW 1 for MAE 108 Fall 25
close all, clear

% Move to directory where the data is downloaded
cd('C:\Users\tigrr\Downloads')

% Load the data
load('SD_temperature.dat')

% Create vectors to hold data needed
years = SD_temperature(:,1);
tempNov = SD_temperature(:,12);

% Create histogram figure with bin width of 1 degree
figure(1), histogram(tempNov,'BinWidth',1,'Normalization','probability')
xlabel('Temperature in November (F)')
ylabel('Probability')
title('Temperature in November vs Probability')

% Find sample mean
samplemean = mean(tempNov)
% Find standard deviation
stdtemp = std(tempNov)

% Count instances of temperature being above 65 F
hot = 0;
for p = 1:length(tempNov)
    tempNov(p);
    if tempNov(p) >= 65
        hot = hot+1;
    end
end

% Find probability of it being hot in November
probHot = hot/length(tempNov)




cd('C:\Users\tigrr\UCSD\MAE108\HW1')