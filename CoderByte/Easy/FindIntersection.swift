import Foundation

func FindIntersection(_ strArr: [String]) -> String {

  let a = Set(strArr[0].components(separatedBy: ", ").map { Int($0)! })
  let b = Set(strArr[1].components(separatedBy: ", ").map { Int($0)! })

  let result = a.intersection(b)
  
  return result.count > 0 ? result.sorted().map { String($0) }.joined(separator: ", ") : "false"

}

// keep this function call here
print(FindIntersection(readLine(stripNewline: true)));
