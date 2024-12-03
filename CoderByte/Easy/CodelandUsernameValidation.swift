import Foundation

func CodelandUsernameValidation(_ str: String) -> String {
  
  // 조건 2: 첫 번째 문자는 문자여야 함
  guard let firstChar = str.first, firstChar.isLetter else { return "false" }

  // 조건 1: 길이는 4~25자
  // 조건 3: 문자, 숫자, 밑줄 문자만 포함 (정규표현식)
  let regex = "^[a-zA-Z0-9_]{4,25}$"

  guard let _ = str.range(of: regex, options: .regularExpression) else { return "false" }
  
  // 조건 4: 밑줄로 끝나면 안 됨
  guard !str.hasSuffix("_") else { return "false" }


  return "true"

}
