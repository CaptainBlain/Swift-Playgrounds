import UIKit

var intArrayOne = [1, 2, 3, 4, 5, 6]
var intArrayTwo = [5, 6, 7, 8, 9, 10]

//MARK: Shuffling
//shuffle in place
intArrayOne.shuffle()
//get a shuffled array back
let shuffled = intArrayOne.shuffled()

//MARK: Inserting
//inserting will move all items up one spot
intArrayOne.insert(8, at: 3)

//MARK: Merging
//Combine the two int arrays
let combined = intArrayOne + intArrayTwo

//MARK: Subarrays
//retrieve a range of elements using the subscript sytax with a two sided range operator
var subarray = intArrayTwo[3...5]
//retrieve a range of elements using the subscript sytax with a half open range operator
var subarrayIntArrayOne = intArrayTwo[3..<5]
//retrieve a range of elements using the subscript sytax with a one sided range operator
var one = intArrayTwo[..<5]
var two = intArrayTwo[...2]
var three = intArrayTwo[3...]

//MARK: Bulk Changes
intArrayOne[1...2] = [11, 12]
intArrayOne[0...2] = [13, 14]
intArrayOne[0...3] = [11, 12, 13, 14, 15]

//MARK: Sort
//Array is sorted in place
var intArrayThree = [9, 3, 6, 2, 8, 5]
intArrayOne.sort() {$0 < $1}
var intArrayFour = [5, 10, 34, 7, 81, 98]
intArrayOne.sorted(by: <)
//Create a new sorted array
let sortedArray = intArrayThree.sorted() { $0 < $1 }

//MARK: Filter
//Filter returns a new array by subsetting based upon a set of rules
let filteredArray = intArrayThree.filter() { $0 > 3 && $0 < 8 }

//MARK: Map
//Map applies logic to all elements within an array
let arrayFive = [1, 2, 3, 4, 5]
let mappedIntArray = arrayFive.map() { $0 * 10}
//Doesn't require the new array to contain the same element type as the orignal array
let mappedStringArray = arrayFive.map() { "Number: \($0)" }

//MARK: Count
//Combine filter and count methods to count the number of items in an array that match a rule
let citites = ["Birmingham", "Lichfield", "Manchester", "Edinburgh"]
let filteredCount = citites.filter({$0.range(of: "i") != nil}).count

//MARK: Removing
//removes last element
intArrayOne.removeLast()
//removes at index
intArrayOne.remove(at: 1)
//removes all elemen ts
intArrayOne.removeAll()


 
