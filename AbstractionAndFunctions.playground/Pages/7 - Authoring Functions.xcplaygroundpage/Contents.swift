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
func trianglePerimeter(side1: Double, side2: Double, side3: Double) -> Double {
    if side1+side2 > side3 && side3+side2 > side1 && side1+side3 > side2 {
        return side1+side2+side3
    } else {
        print("These side lengths do not make a triangle")
        return 0
    }
}

let perimeter = trianglePerimeter(side1: 2.0, side2: 2.0, side3: 3.0)
print(perimeter)

func circlePerimeter (radius: Double) -> Double{
    return Double.pi * radius * 2
}

let perimeter2 = circlePerimeter(radius: 3)
print(perimeter2)

func trapezoidArea(upperBottom: Double, bottom: Double, height: Double) -> Double {
    return (upperBottom+bottom) * height / 2
}

let area1 = trapezoidArea(upperBottom: 3.0, bottom: 7.0, height: 4.0)
print(area1)





/*:
 [Previous: Writing Documentation](@previous) | Page 7
 */
