/*
Given a number n, for each integer i in the range from 1 to n inclusive, print one value per line as follows:
- if i is a multiple of both 3 and 5, print FizzBuzz
- if i is a multiple of 3 (but not 5), print Fizz
- if i is a multiple of 5 (but nor 3), print Buzz
- if i is not a multiple of 3 or 5, print the value of i

Example
Input: 15
Output:
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
*/

func fizzBuzz(n: Int) -> Void {
    for i in 1...n {
        if (i%3==0 && i%5==0) {
            print("FizzBuzz")
        } else if (i%3==0) {
            print("Fizz")
        } else if (i%5==0) {
            print("Buzz")
        } else {
            print("\(i)")
        }
    }
}