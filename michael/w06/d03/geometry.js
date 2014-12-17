// ## Geometry

// Given the following a `rectangle` object like the one below, write the following functions:

// * isSquare - Returns whether the rectangle is a square or not
// * area - Calculates the area of the rectangle
// * perimeter - Calculates the perimeter of the rectangle

// ```
var rectangle = {
  length: 4,
  width: 4
};

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
    if (this.length == this.width)
      return true;
    else
      return false;
    };

Rectangle.prototype.area = function() {
  return this.length * this.width;
};



// Given the following a `triangle` object like the one below, write the following functions:

// * isEquilateral - Returns whether the triangle is equilateral or not
// * isIsosceles - Returns whether the triangle is isosceles or not
// * area - Calculates the area of the Triangle
// * isObtuse - Returns whether the triangle is obtuse or not

// ```
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};
```