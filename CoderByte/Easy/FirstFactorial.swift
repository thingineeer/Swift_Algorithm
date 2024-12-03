func FirstFactorial(_ num: Int) -> Int {

  var number = num

  var result = 1

  while number != 1 {
    result *= number
    number -= 1
  }

  return result

}
