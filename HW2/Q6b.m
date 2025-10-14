% Question 6 Part b of HW 2 for MAE 108 Fall 25
Q6a

% Define our threshold
thresh = 55;

% Create a matrix of true and false to represent whether the temp is lower than our threshold
% Then takes the mean to give a mean for each of the columns
Prob_E_Mi = mean(tempAll<thresh);
months = 1:12;
figure(2), bar(months, Prob_E_Mi, 'FaceColor', [0.2 0.5 0.8]);
xlabel('Month');
ylabel('P(E | M_i)');
title('Probability of Cold Events (T < 55°F) by Month');
xticks(1:12);
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
grid on;