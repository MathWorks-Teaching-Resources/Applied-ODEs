SwayLink = "https://sway.cloud.microsoft/GSkeua7N2buVpaIZ?ref=Link";
StudentFormLink = "https://forms.microsoft.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5uTTy0Nzo3hCsqA_uQZCxy5UOVBOTVY3UVBCVERJVUxaWUhXRjFMU0g0SC4u";
FacultyFormLink = "https://forms.microsoft.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5uTTy0Nzo3hCsqA_uQZCxy5UNVQ3Q0kxSDk1TDlaMTlOMEw0UUNMRjZGWS4u";

proj = currentProject;
disp("The loaded project is " + proj.Name) %[output:7737b974]
disp("Saving the new values...") %[output:2336a517]

save(fullfile(proj.RootFolder,"Utilities","SurveyLinks.mat"),"FacultyFormLink","StudentFormLink","SwayLink")

clear SwayLink StudentFormLink FacultyFormLink

%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%%
%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":7.3}
%---
%[output:7737b974]
%   data: {"dataType":"text","outputData":{"text":"The loaded project is Applied Ordinary Differential Equations\n","truncated":false}}
%---
%[output:2336a517]
%   data: {"dataType":"text","outputData":{"text":"Saving the new values...\n","truncated":false}}
%---
