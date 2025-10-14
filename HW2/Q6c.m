% Question 6 Part c of HW 2 for MAE 108 Fall 25
Q6b

% Break down the formula into its parts
pMcapE = sum(tempAll < thresh) / numel(tempAll);
pE = sum(tempAll(:) < thresh) / numel(tempAll);
P_M_given_E = pMcapE / pE;

% Plot it
figure(3), bar(months, P_M_given_E, 'FaceColor', [0.9 0.4 0.2]);
xticks(months); xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
xlabel('Month'); ylabel('P(M_i | E)');
title('Probability of Month Given Cold Event');
grid on;