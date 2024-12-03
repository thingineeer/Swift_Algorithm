import Foundation

func LongestWord(_ sen: String) -> String {

  let maxLength = sen.components(separatedBy: " ").filter { isLetters($0) }.map { $0.count }.max()!

  let result = sen.components(separatedBy: " ").filter { $0.count == maxLength }

  return result[0]

}

func isLetters(_ input: String) -> Bool {
  for i in input {
    if !i.isNumber && !i.isLetter {
      return false
    }
  }
  return true
}

// keep this function call here
print(LongestWord(readLine(stripNewline: true)));
