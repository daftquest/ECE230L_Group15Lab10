# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Group 15
Paul
Brian

## Summary
We created logic for a D FlipFlop with Edge Trigger. We expanded on this logic block to build a JK FlipFlop on top of it. Then using the JK FlipFlop, we added some additional logic to turn it into a T FlipFlop. 

## Lab Questions

### What is difference between edge and level sensitive circuits?
Edge sensitive circuits have only the time window of dt for the transition from 0 to 1 or 1 to 0 on the clock signal. During this tiny window, it can change it's stored value. 
Level trigger has the entire time the clock is at 1 to store or change it's internal value. 

### Why is it important to declare initial state?
Because Verilog has no default/ null state for a D FlipFlop output Q

### What do edge sensitive circuits let us build?
All advanced logic circuits. They allow vast networks of interconnected modules to act on expected cadence. 
