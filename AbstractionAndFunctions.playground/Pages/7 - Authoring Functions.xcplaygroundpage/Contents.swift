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


/// A function to calculate the perimeter of a circle
/// - Parameter radius: The radius of the circle
/// - Returns: The perimeter of the circle
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

/// A function to find the area of a given trapezoid
/// - Parameter upperBottom: The upper bottom of the trapezoid
/// - Parameter bottom: The lower bottom of the trapezoid
/// - Parameter height: The height of the trapezoid
/// - Returns: The area of the trapezoid
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

/// A finction to find the surface area of a given cylinder
/// - Parameter radius: The radius of the cylinder's bottom
/// - Parameter height: The height of the cylinder
/// - Returns: The surface area of the cylinder
func cylinderSurfaceArea (radius:Double, height:Double) -> Double?{
    guard radius > 0 && height > 0 else {
        return nil
    }
    return Double.pi * pow(radius, 2) + Double.pi * height * radius
}

//Test case 1:
let cylinder1 = cylinderSurfaceArea(radius: 2, height: 10)
//Test case 2: Negative height
let cylinder2 = cylinderSurfaceArea(radius: 2, height: -10)
//Test case 3: 0 as radius
let cylinder3 = cylinderSurfaceArea(radius: 0, height: 18)

/// A function to find the surface area of a given rectangular prism.
/// - Parameter width: The width of the rectangular prism.
/// - Parameter length: The length of the rectangular prism.
/// - Parameter height: The height of the rectangular prism.
func rectangularPrismSurfaceArea(width: Double, length: Double, height: Double) -> Double? {
    guard height > 0 && length > 0 && width > 0 else {
        return nil
    }
    return height * width * 2 + width * length * 2 + height * length * 2
}
//Test case 1: Cube with side length 2, surface area 24
let cube1 = rectangularPrismSurfaceArea(width: 2, length: 2, height: 2)
//Test case 2: Rectangular prism
let rectangularPrism1 = rectangularPrismSurfaceArea(width: 3, length: 4, height: 5)
//Test case 3: Negative inputs
let rectangularPrism2 = rectangularPrismSurfaceArea(width: -1, length: 3, height: -2)
//Test case 4: Zero as input
let rectangularPrism3 = rectangularPrismSurfaceArea(width: 0, length: 0, height: 3)

/// A function to calculate the volume of a given sphere.
/// - Parameter radius: The radius of the sphere.
func sphereVolume (radius: Double) -> Double? {
    guard radius > 0 else {
        return nil
    }
    return 4/3 * Double.pi * pow(radius, 3)
}

//Test case 1: Sphere with radius 3, should have volume 36π or about 113.09
let sphere1 = sphereVolume(radius: 3)
//Test case 2: With negative radius
let sphere2 = sphereVolume(radius: -3)
//Test case 3: With 0 as radius
let sphere3 = sphereVolume(radius: 0)

/*:
 [Previous: Writing Documentation](@previous) | Page 7
 */
