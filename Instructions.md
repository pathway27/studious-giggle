# Qantas Group Accommodation Ruby Toy Robot Refactor Code Test

## Instructions

We would like you to work on this coding test for us to see how you would approach refactoring a feature. We think you should spend about 4 hours on the code test, we consider it a starting point to extend and modify in our technical interview with you.

## The task

We've sent you a ready-made prototype of a Toy Robot, along with the original specifications.

The original Toy Robot has gone rogue and we need you to create a more capable version; one that can outmanoeuvre the original.

The original version could only rotate on a 90-degree axis, we need you to upgrade it so that it can rotate on a 45-degree axis - effectively able to move diagonally on the surface (which remains unchanged).
As in the original Toy Robot challenge, there are no other obstructions on the table surface. The robot is free to roam around the surface of the table, but must still be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.
The good news is that the application should still accept commands in the same form:
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
PLACE still puts the toy robot on the table in position X,Y. However, in addition to cardinal directions NORTH, SOUTH, EAST or WEST, this upgraded model can also face (F) inter-cardinal directions e.g. NORTHEAST or SOUTHWEST.
	•	The origin (0,0) can still be considered to be the south west most corner.
	•	The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command
	•	The application should discard all commands in the sequence until a valid PLACE command has been executed.
	•	MOVE will move the toy robot one unit forward in the direction it is currently facing. This direction may be diagonal.
	•	LEFT and RIGHT will now rotate the robot 45 degrees in the specified direction and still will not change the position of the robot.
	•	REPORT will announce the X,Y and F of the robot, as before.
	•	This can be in any form, but standard output is sufficient.
	•	A robot that is not on the table can still choose the ignore the MOVE, LEFT, RIGHT and REPORT commands.
	•	As before, input can be from a file, or from standard input, as the developer chooses.
	•	Provide test data to exercise the application.
Constraints:
The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot. Any move that would cause the robot to fall must be ignored.

Example Input and Output:

Example a)
PLACE 0,0,NORTH
MOVE
REPORT

> 0,1,NORTH

---
Example b)
PLACE 0,0,NORTH
LEFT
REPORT

> 0,0,NORTHWEST

---
Example c)
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT

> 4,3,NORTHEAST

---
Example d)
PLACE 2,0,NORTH
MOVE
LEFT
LEFT
MOVE
REPORT

> 1,1,WEST



## Included files

Original Toy Robot Source code


## What we are looking for

1. Does it work? Yes.
2. Have you improved the code? Upgraded to ruby 2.6, some refactors, mostly new feature
3. What tradeoffs did you make? Adding more directions as the cost of more verbose code.
4. How well designed is the resulting code?
5. What tests were added / changed?
6. In what order did you make your changes?
7. Will this Robot be capable of saving human kind? Probably not yet. :)

## Deliverables

It is not required to provide any graphical output showing the movement of the toy robot.

We'd like to see:

- The solution source code
- commit history
- instructions to run the app, tests, etc.
- a readme with comments about your approach and trade-offs you possibly made


## Additional Info
We respect your time so please don't spend more than 3-4 hours working on this. We'd rather you submitted something partially complete after that time for us to discuss than spend days of your own time working on it. 
Topics for a great discussion could include further work needed for production readiness, and testing strategies.

We'll send you feedback on your code. If the outcome isn't to the standard we require for the role we'll always aim to have you at least learn something from the process.

We may also want to discuss your code with you, to understand your approach and the tradeoffs you made.

Since a truly objective test of well-designed code is that it accepts changes in a reasonable manner, we often like to ask you to pair with someone from our team on an extension to the problem. For familiarity, we'll always try to do that on your machine, with your text editor.

Feel free to send through any questions you may have.
