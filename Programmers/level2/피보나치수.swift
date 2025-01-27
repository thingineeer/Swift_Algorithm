// 메모리(배열) 사용 줄이고 O(N) 으로 해결

func solution(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    
    var a = 0
    var b = 1
    var temp = 0
    var count = n
    
    while count > 1 {
        temp = a + b
        a = b
        b = temp % 1234567
        temp = 0
        count -= 1
    }
    
    return b
}
