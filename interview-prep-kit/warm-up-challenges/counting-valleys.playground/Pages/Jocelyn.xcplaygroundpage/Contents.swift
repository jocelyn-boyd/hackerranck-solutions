//: [Previous](@previous)

import Foundation

/// Given the sequence of up and down steps during a hike, find and print the number of valleys walked through.
/// - Parameters:
///   - steps: the number of steps on the hike
///   - path: a string describing the path
/// - Returns: the number of valleys traversed
func countingValleys(steps: Int, path: String) -> Int {
	// Write your code here
	var downhillCount = Int()
	var valleyCount = Int()
	var reachedSeaLevel = true
	
	for step in path {
		
		if step == "D" {
			downhillCount += 1
		} else {
			downhillCount -= 1
		}
		
		if downhillCount > 0 && reachedSeaLevel {
			valleyCount += 1
			reachedSeaLevel = false
		}
		if downhillCount == 0 {
			reachedSeaLevel = true
		}
	}
	return valleyCount
}


//: [Next](@next)
