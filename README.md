# sample-assignment

![CI](https://github.com/Lnk2past/sample-assignment/workflows/CI/badge.svg)

Sample assignment that is auto-graded. Grading includes build output, test output, and a score.

## Uses

- https://github.com/Lnk2past/turtleshell
- https://github.com/Lnk2past/auto-grader-action
- https://github.com/Lnk2past/actions-pytoolkit

## How It Works

The key is in the [actions](/.github/workflows/test.yml) workflow. After checking out the repository, we use the action `Lnk2past/auto-grader-action`. This action, [defined here](https://github.com/Lnk2past/auto-grader-action), uses its own configuration to grade the assignment. The grader is configured specifically for my assignments (you can fork and configure it for yourself!) to build and test using a Makefile. Each step of the grading process has a point value associated with it, and so as we go through each step we accumulate the points and step output. The final result is a newly created issue (or modified, if it exists already) with the complete grade report.
