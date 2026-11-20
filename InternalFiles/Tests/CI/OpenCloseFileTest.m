classdef OpenCloseFileTest < matlab.unittest.TestCase

    properties
        rootProject
    end

    methods(TestClassSetup)

        function setUpPath(testCase)

            try
                project = currentProject;
                testCase.rootProject = project.RootFolder;
                cd(testCase.rootProject)
            catch
                error("Load project prior to run tests")
            end

            testCase.log("Running in " + version)

        end % function setUpPath
        
    end % methods(TestClassSetup)

    methods(Test)

        % Test that all plain-text Live Scripts open correctly and are not corrupted
        function OpenCloseLiveScripts(testCase)

            files = [dir(fullfile(testCase.rootProject,"README.m")); ...
                dir(fullfile(testCase.rootProject,"MainMenu.m"))];
            files = [files;dir(fullfile(testCase.rootProject,"Scripts","*.m"))];
            files = [files;dir(fullfile(testCase.rootProject,"InstructorResources", ...
                "Solutions","*.m"))];
            internalLiveScripts = ["InternalFiles/README_Internal.m"; ...
                "InternalFiles/Citations/References.m"; ...
                "InternalFiles/Images/CommonIcon.m"; ...
                "InternalFiles/RequiredFunctions/StartUpFcn/SetupAppLinks.m"];
            for k = 1:numel(internalLiveScripts)
                files = [files;dir(fullfile(testCase.rootProject, ...
                    replace(internalLiveScripts(k),"/",filesep)))]; %#ok<AGROW>
            end

            for i = 1:size(files)
                filepath = fullfile(files(i).folder,files(i).name);
                fid = matlab.desktop.editor.openDocument(filepath);
                fid.closeNoPrompt;
            end
        end  

        % Test that all the MAT file open correctly and are not corrupted
        function OpenCloseMAT(testCase)
            files = dir(fullfile(testCase.rootProject,"Data","*.mat"));
            for i = 1:size(files)
                matpath = fullfile(files(i).folder,files(i).name);
                mid = open(matpath); %#ok<NASGU>
                clear mid
            end
        end

        % Test that all the SLX file open correctly and are not corrupted
        function testSLX(testCase)
            files = dir(fullfile(testCase.rootProject,"Models","*.slx"));
            for i = 1:size(files)
                modpath = fullfile(files(i).folder,files(i).name);
                open_system(modpath)
                close_system(modpath)
            end
        end

    end


    methods (TestClassTeardown)

        % function closeAllFigure(testCase)
        %     close all force  % Close all figures
        %     bdclose all      % Close all models
        % end

    end % methods (TestClassTeardown)


end
