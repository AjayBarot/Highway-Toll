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
  - How to calculate mph based on time and distance (maths).
  - any other calculation?
5. Implementation
  - Rspec
  - Rdoc
  - Any other library needed?
  - One main execution file
  - logic will go to lib folder files
  - Validations of input
  - Read input
  - Need to decide when iteration will end for input
  - Abstraction design pattern can be follow
  - Find the Driver, Find the Trip on respective input
  - Display thing can be part of main ruby file or seperate entity (WIP)
  - Inputs looks like instructions not the command so need to grab the input (Need to supply file as input)
  - After Accepting File reading file perform (calculation) Write output file and show to user input.