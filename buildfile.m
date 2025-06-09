function plan = buildfile
import matlab.buildtool.tasks.*

plan = buildplan(localfunctions);

plan("clean") = CleanTask;
plan("check") = CodeIssuesTask;
plan("test") = TestTask(SourceFiles="quadraticSolver.m", ...
        TestResults="test-results/results.xml", ...
        CodeCoverageResults="code-coverage/results.xml");

plan.DefaultTasks = ["check" "test"];
end
