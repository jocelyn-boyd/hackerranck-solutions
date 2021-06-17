//: [Previous](@previous)

import Foundation

/// Determines how many pairs of socks with matching colors there are
/// - Parameters:
///   - n: the number of socks in the pile
///   - ar: the colors of each sock
/// - Returns: number of pairs
func sockMerchant(n: Int, ar: [Int]) -> Int {
	var dict = [Int:Int]()
	var pairsOfSocks = Int()
	
	for num in ar {
		if let count = dict[num] {
			dict[num] = count + 1
			if dict[num]! % 2 == 0 {
				pairsOfSocks += 1
			}
		} else {
			dict[num] = 1
		}
	}
	return pairsOfSocks
}

//: [Next](@next)
