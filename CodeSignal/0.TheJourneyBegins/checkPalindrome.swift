func solution(inputString: String) -> Bool {
    let originalInput = inputString.map { $0 }
    let reverseInput = inputString.map { $0 }.reversed().map { $0 }
    
    return originalInput == reverseInput
}
