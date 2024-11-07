func solution(year: Int) -> Int {
    return year % 100 > 0 ? (year / 100) + 1 : year / 100
}
