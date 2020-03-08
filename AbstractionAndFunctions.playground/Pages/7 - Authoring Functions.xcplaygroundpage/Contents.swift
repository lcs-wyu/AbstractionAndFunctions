import Foundation

/*:
# Authoring Functions
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select eight formulas using this criteria:
 
 * two perimeter formulas
 * two area formulas
 * two surface area formulas
 * two volume formulas
 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Then, on this page, author the:

 * function definitions
 * appropriate documentation (as described on [page 6](@previous))
 * make good choices for function names, argument labels, and parameter names
 * test your functions by invoking them a few times to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each function.
 
 */
// Begin your work here...
/// A function to find the perimeter of a triangle
/// - Parameter side1: Side 1 of the triangle
/// - Parameter side2: Side 2 of the triangle
/// - Parameter side3: Side 3 of the triangle
/// - Returns: Perimeter of the triangle
func trianglePerimeter(side1: Double, side2: Double, side3: Double) -> Double? {
    if side1+side2 > side3 && side3+side2 > side1 && side1+side3 > side2 {
        return side1+side2+side3
    } else {
        print("These side lengths do not make a triangle")
        return nil
    }
}
//Test case 1
let perimeter = trianglePerimeter(side1: 2.0, side2: 2.0, side3: 3.0)
print(perimeter!)
//Test case 2: With sides that cannot make a triangle
let trianglePerimeter2 = trianglePerimeter(side1: 1.0, side2: 2.0, side3: 4.0)
//Test case 3: With negative side lengths
let trianglePerimeter3 = trianglePerimeter(side1: 8, side2: -9, side3: -9)
//Test case 4: With 0
let triangleperimeter4 = trianglePerimeter(side1: 0, side2: 7, side3: 8)


func circlePerimeter (radius: Double) -> Double?{
    guard radius > 0 else {
        return nil
    }
    return Double.pi * radius * 2
}

//Test case 1
let circlePerimeter1 = circlePerimeter(radius: 3)
print(circlePerimeter1!)
//Test case 2: Negative radius
let circlePerimeter2 = circlePerimeter(radius: -3)
//Test case 3: Radius is zero
let circlePerimeter3 = circlePerimeter(radius: 0)

func trapezoidArea(upperBottom: Double, bottom: Double, height: Double) -> Double? {
    guard upperBottom > 0 && bottom > 0 && height > 0 else {
        return nil
    }
    return (upperBottom+bottom) * height / 2
}
//Test case 1
let area1 = trapezoidArea(upperBottom: 3.0, bottom: 7.0, height: 4.0)
print(area1!)
//Test case 2: Height is 0
let trapezoidArea2 = trapezoidArea(upperBottom: 9, bottom: 8, height: 0)
//Test case 3: Negative bottom length and height
let trapezoidArea3 = trapezoidArea(upperBottom: 2, bottom: -3, height: -8)
//Test case 4:Negative upper bottom length
let trapezoidArea4 = trapezoidArea(upperBottom: -4, bottom: 5, height: 6)


/// A function to find the area of any given parallelogram
/// - Parameter height: The height of the parallelogram
/// - Parameter bottom: The bottom of the parllelogram
/// - Returns: The area of the parallelogram
func paralleogramArea (height: Double, bottom: Double) -> Double? {
    guard height > 0 && bottom > 0 else {
      return nil
    }
      return height * bottom
}


/*:
 [Previous: Writing Documentation](@previous) | Page 7
 */
