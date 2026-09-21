# Project #: Scheme

* Author: Broden
* Class: CS354 
* Semester: Fall 2026

## Overview

Super-Duper is a function that returns a copy of a list source where every element 
has been duplicated a designated amount of times. The copy is a deep copy meaning
nested lists elements are also duplicated rather than just copying a list as a single element. 
There is a testing program used to make sure the functionality is as expected. The tests mainly focus on edge cases and transformations.

## Reflection

Functional programming is hard to get my head around. Recursion rather than traditional logic flow is a huge adjustment. 
Also the syntax of scheme where it is countless functions inside of functions makes it pretty hard to read and understand 
as the program quickly becomes what feels like an unmanageable mess of parenthesis. This wouldn't be a huge deal except for 
the fact that you can be too proactive with the parenthesis where if you parenthisise individual values it will read it as a
completely different type and break because (value) has a distinct meaning rather than just being understood of as just value.

A big part of this project was understanding where to start. A big focus of recusive procedure is to identify a base case which 
in lists is an empty list most of the time but the project spec also dictates another base case where the input is a single atom. 
Unfortunately there is not an atom? function, luckily the logic on determining an atom was fairly simple as it would just be the 
inverse of the pair? function. Once I had that I realized I should probably make test cases to determing if the output was as expected,
my test cases use the example code as a starting point and then adjust the function being tested as needed, this process of testing was
surprisingly easy, and useful so I used it for the next function I needed which was to duplicate elements into their own sub list to then 
be attached back into the list. Once I had this I realized I couldn't actually append the duplicated elements into the list since the append
function was not allowed so I did some research and made my own. I then made super-duper, which didn't work as expected because the copy
wasn't permeating through all nested lists as well. It took a long time to figure out a solution on how to duplicate a lists elements n times
until I realized thats literally what I was writing and just called super-duper inside super-duper. This was a challenge to say the least but I 
did manage to get through it and it was pretty fun as well!


## Compiling and Using

To run the program you can use the Guile interpreter. To run super-duper by itself you would do:

guile -l super-duper.scm

then

(display (super-duper <list> <count>))

To run the test you would instead do:

guile test.scm

## Results

scheme@(guile-user)> (display (super-duper '(a) 5))            
(a a a a a)

guile test.scm

test 1.1
passed

test 2.1
passed

test 1.2
passed

test 2.2
failed

test 1.3
passed

test 1.4
passed

test 2.4
passed

test 3.4
passed

test 4.4
passed

test 5.4
passed

test 6.4
passed

test 7.4
passed

test 8.4
passed

test 9.4
passed

test 10.4
passed

## Sources used

https://stackoverflow.com/questions/12609803/what-are-considered-atoms-in-scheme - This source is 
how i found out about the pair? function which is the inverse logic for my atom? function, this helped 
me right the atom function - see Oscar Lopez

https://docs.scheme.org/schintro/schintro_46.html#SEC50 - Useful document with info on a bunch of scheme
procedure, used to understand how to deep copy arrays in scheme.

https://youtu.be/a8tulokZSk8?si=VgKr-F02GfSsQai0 - 6:07 the video shows how to duplicate each element in a list
one time, used the shown logic flow and worked off of it to duplicate n times.

https://stackoverflow.com/questions/12646888/scheme-merge-two-lists-into-one - I needed a way to append two lists together
since my element duplication logic returned a list of the duplicated elements, unsure how to actually do this I found this
which actually weaves elements from each list one after the other which is not what I needed, but someone trying to correct 
the already correct answer instead managed to describe the procedure for appending lists - see ad absurdum's reply to Dan Grahn's comments

----------