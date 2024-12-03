func FirstReverse(_ str: String) -> String {
    return str.reversed().map { String($0) }.joined()
}

// keep this function call here
print(FirstReverse(readLine(stripNewline: true)));
