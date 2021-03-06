# Robot Simulation

1. Ensure that following dependencies are met
   - ruby version is  *ruby-2.6.3*
   - rbenv is installed (as the app uses .ruby-version)
   - run `bundle --path=.bundle --binstubs` to install all gems

2. To run specs `bundle exec rspec`

3. To run the robot simulation, just type  
   `./scripts/robot_simulator`

   - all the commands are place in the `command.txt` file in scripts folder
    * commands are read from this file & fed into the simulated robot.  
    * it includes valid commands (MOVE, PLACE, LEFT, RIGHT)
    * few invalid commands (just to check error handling)

4. All error, exception (when robot can fall due to a command), debug information is logged into the log file `log/robot_[environment]. log`.

## Changes

1. Upgrade to ruby 2.6.3
2. Add extra directions in Simulation::Direction
3. Allow it to be interpreted as a command
4. Make the move action respect diagonal commands

Some methods still look a little complicated like the `next_move_valid?`.