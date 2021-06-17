//: [Previous](@previous)

import Foundation

// Still working this one out to try and pass all the test cases.

///  Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud.
/// - Parameter c: an array of binary integers
/// - Returns: the minimum number of jumps required
func jumpingOnClouds(c: [Int]) -> Int {
	// Write your code here
	var jumpCount = Int()
	
	for (index, value) in c.enumerated() {
		
		guard index != c.count - 2 else { return jumpCount }
		
		let currVal = value
		let checkedVal = c[index + 2]
		let safeVal = 0
		let skipVal = 1
		
		// if curr val == 0 and checked val == 0
		// then jumpCount += 1
		if  currVal == safeVal && checkedVal == safeVal {
			jumpCount += 1
		}
		
		// if curr val == 0 and checked val == 1
		// then checkedVal = c[index + 1]
		// if curr val == 0 and checked val == 0
		// then jumpCount += 1
		else if currVal == safeVal && checkedVal == skipVal {
			
			let nextVal = c[index + 1]
			if currVal == safeVal && nextVal == safeVal {
				jumpCount += 1
			}
		}
	}
	return jumpCount
}

//: [Next](@next)
