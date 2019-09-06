import UIKit

struct MathOperation {
    var units: String
    var operation: (Double, Double) -> Double
    
    init?(units: String, operation: @escaping (Double, Double) -> Double) {
        if (units == "") {
            return nil
        }
        self.units = units
        self.operation = operation
    }
}

var test = MathOperation(units: "", operation: {
    (x, y) in
    return x + y
})

if test == nil {
    print("It failed!")
}
