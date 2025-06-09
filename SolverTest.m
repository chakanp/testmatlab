classdef SolverTest < matlab.unittest.TestCase
    % SolverTest tests solutions to the quadratic equation
    % a*x^2 + b*x + c = 0
    
    properties
        offset
    end
    
    properties(TestParameter)
        propTP = struct('TPfield1',1,'TPfield2',2)
    end
    
    properties(MethodSetupParameter)
        propMSP = struct('MSPfield1',11,'MSPfield2',22);
    end
    
    properties(ClassSetupParameter)
        propCSP = struct('CSPfield1',111,'CSPfield2',222)
    end
    
    methods (TestClassSetup)
        function ClassSetupOne(testCase, propCSP)
            disp('Using propCSP to setup my class environment')
            disp(propCSP)
        end
    end
    
    methods (TestMethodSetup)
        function SetupOne(testCase, propMSP)
            disp('Preparing Testcase with the MethodSetup')
            disp(propMSP)
        end
    end
    
    methods(TestMethodTeardown)
        function TeardownOne(testCase)
            disp('Tearingdown Testcase')
        end
    end
    
    methods (Test)
        function testRealSolution(testCase, propTP)
            disp(propTP)
            actSolution = quadraticSolver(1,-3,2);
            expSolution = [2,1];
            testCase.verifyEqual(actSolution,expSolution);
        end
        function testImaginarySolution(testCase, propTP)
            disp(propTP)
            actSolution = quadraticSolver(1,2,10);
            expSolution = [-1+3i, -1-3i];
            testCase.verifyEqual(actSolution,expSolution);
        end
%        function testFailing(testCase, propTP)
%            disp(propTP)
%            actSolution = quadraticSolver(1,2,10);
%            expSolution = [-3+3i, -3-3i];
%            testCase.verifyEqual(actSolution,expSolution);
%        end
    end
    
end 