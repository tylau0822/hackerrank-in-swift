/* 
Given a time in -hour AM/PM format, convert it to military (24-hour) time.

Example
Input: 07:05:45PM
Output: 19:05:45
*/

func timeConversion(s: String) -> String {
    let index = s.index(s.endIndex, offsetBy: -2)
    let s2: String = String(s[..<index])
    let splittedTime = s2.split(separator: ":")

    let hours = String(splittedTime[0]);
    let minutes = String(splittedTime[1]);
    let second = String(splittedTime[2]);

    if(s.contains("AM")){
        return (hours == "12" ? "00" : hours) +  ":" + minutes + ":" + second; 
    } else {
        return (hours == "12" ? hours : "\(Int(hours)!+12)") + ":" + minutes + ":" + second; 
    }
}