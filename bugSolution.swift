let optionalNumbers: [Int?] = [1, 2, nil, 4, 5]

// Incorrect use of concise operator (ignores nil values)
// let sumIncorrect = optionalNumbers.reduce(0, +)

// Correct use of closure with nil handling
let sumCorrect = optionalNumbers.reduce(0) { $0 + ($1 ?? 0) }

print(sumCorrect) // Output: 12

//Demonstrates the difference in output when the inital value is not 0

let sumCorrect2 = optionalNumbers.reduce(100) { $0 + ($1 ?? 0) }
print(sumCorrect2) // Output: 112

//Demonstrates behaviour with empty array and non zero initial value
let emptyArray: [Int?] = []
let sumCorrect3 = emptyArray.reduce(100) { $0 + ($1 ?? 0) }
print(sumCorrect3) // Output: 100