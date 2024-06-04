/*
Given an array of integers, where all elements but one occur twice, find the unique element.

Example
Input: 0 0 1 2 1
Output: 2
*/

func lonelyinteger(a: [Int]) -> Int {
    var elements: [Int] = []
    
    for num in a {
        if !elements.contains(num) {
            elements.append(num)
        } else {
            if let index = elements.firstIndex(of: num) {
                elements.remove(at: index)
            }
        }
    }
    
    if elements.count == 1 {
        return elements[0]
    }
    return -1
}