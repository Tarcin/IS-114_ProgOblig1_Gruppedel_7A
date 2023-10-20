#Defined indentifiers for basic shapes. Simple naming convention of color-c for circles
rod = circle(5, "solid", "black")
red-c = circle(20,"solid","red")
green-c = circle(30,"solid","green")
blue-c = circle(40,"solid","blue")
orange-c = circle(50,"solid","orange")
box = empty-scene(400,120)

#|Used composites. We realized that only 7 color combinations existed in the solution, 
so we defined them to make code more readable. C omitted from naming, used simple color order instead.|#
red-green = overlay(red-c,green-c)
red-orange = overlay(red-c,orange-c)
green-blue = overlay(green-c,blue-c)
blue-orange = overlay(blue-c,orange-c)
red-green-blue = overlay(red-green,blue-c)
green-blue-orange = overlay(green-blue,orange-c)
full = overlay(red-green,blue-orange)

#|Structure of algorithm:
   Two state changes needed for each move
   x-rod := xxxxxx
   y-rod := xxxxxx
   
   Three variables to hold each version of the board until it's fully built
   Can be copy pasted throughout program with no changes to produce a board.
   step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
   step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
   step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
   step-3

Technically after we defined all the color combinations it was very possible to omit the 3 rod variable 
with 2 changes per cycle structure and simply use the step 1-3 manually feeding each rods color combination. 
This would've resulted in fewer lines of code overall, but we decided not to revamp the structure, partly 
because we liked the readability of what rod was currently being placed on the scene. And while
the two lines with changes to the rods could've been removed they contributed to the clarity that this was 
the move that was being made.
|#

#variables used for the current state of each rod throughout
var left-rod = full
var mid-rod = empty-image
var right-rod = empty-image

#|variables used for holding each temp state of the image for generating the whole board.
  Named step 1-3 to signify that they are steps in the process to generate a board. Since
  they're variables we could simply have used one with a name like "temp" or something, but
  this was far more descriptive, and we aimed for readability in general|#
var step-1 = put-image(overlay(rod, left-rod), 100, 60, box)
var step-2 = put-image(overlay(rod, mid-rod), 200, 60, step-1)
var step-3 = put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := green-blue-orange
mid-rod := red-c 

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := blue-orange
right-rod := green-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

mid-rod := empty-image
right-rod := red-green

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := orange-c
mid-rod := blue-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := red-orange
right-rod := green-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

mid-rod := green-blue
right-rod := empty-image 

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := orange-c
mid-rod := red-green-blue

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := empty-image
right-rod := orange-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

mid-rod := green-blue
right-rod := red-orange

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := green-c
mid-rod := blue-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := red-green
right-rod := orange-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

mid-rod := empty-image
right-rod := blue-orange

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := green-c
mid-rod := red-c

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

left-rod := empty-image
right-rod := green-blue-orange

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3

mid-rod := empty-image
right-rod := full

step-1 := put-image(overlay(rod, left-rod), 100, 60, box)
step-2 := put-image(overlay(rod, mid-rod), 200, 60, step-1)
step-3 := put-image(overlay(rod, right-rod), 300, 60, step-2)
step-3
