/*
Julius Caesar protected his confidential information by encrypting it using a cipher. Caesar's cipher shifts each letter by a number of letters. If the shift takes you past the end of the alphabet, just rotate back to the front of the alphabet. In the case of a rotation by 3, w, x, y and z would map to z, a, b and c.
Original alphabet:      abcdefghijklmnopqrstuvwxyz
Alphabet rotated +3:    defghijklmnopqrstuvwxyzabc

Example
Input: 
11
middle-Outz
2
Output:
okffng-Qwvb
*/



func caesarCipher(s: String, k: Int) -> String {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    return String(s.map { char in
        if let index = alphabet.firstIndex(of: Character(char.lowercased())) {
            let shiftedIndex = (index+k)%26
            return char.isLowercase ? alphabet[shiftedIndex] : Character(alphabet[shiftedIndex].uppercased())
        }
        return char
    })
}