Highway Trcaker - CLI Application
=====================================

Track the driver's trip details and find out the averge speed, distance and time.

![Live example](/Highway-tool.gif?raw=true "Live example")

## 🚀 Getting started

Instructions for local setup are given below:

1. Clone the repository

```
git clone https://github.com/AjayBarot/Highway-Toll.git
```

2. Enter the project directory

```
cd Highway-Toll
```

3. Install dependencies

```
$ bundle install
```

4. execute ruby file 

```terminal
$ ruby incoming.rb input.txt
```

5. Output will appear.

## 🤔 Approach (first thoughts)

1. CLI Application with inputs from user
2. Main entity Driver Trip
3. No calls to db or storage
4. Summation of time of same driver's tip
  4.1 How to calculate mph based on time and distance (maths)
  4.2 any other calculation?
5. Implementation
  5.1 Rspec
  5.2 Rdoc
  5.3 Any other library needed?
  5.4 One main execution file
  5.5 logic will go to lib folder files
  5.6 Validations of input
  5.7 Read input
  5.8 Need to decide when iteration will end for input
  5.9 Abstraction design pattern can be follow
  5.10 Find the Driver, Find the Trip on respective input
  5.11 Display thing can be part of main ruby file or seperate entity (WIP)
  5.12 Inputs looks like instructions not the command so need to grab the input (Need to supply file as input)
  5.13 After Accepting File reading file perform (calculation) Write output file and show to user input.