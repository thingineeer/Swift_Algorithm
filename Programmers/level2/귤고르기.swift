import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    // log(n)
    let frequency = tangerine.reduce(into: [:]) { counts, number in
        counts[number, default: 0] += 1
    }

    // 빈도수 내림차순, 빈도수가 같을 경우 숫자 내림차순 으로 정렬합니다.
    // nlog(n)
    let sortedArr = tangerine.sorted {
        if frequency[$0]! == frequency[$1]! {
            return $0 > $1 // 빈도수가 같다면 내림 차순
        } else {
            return frequency[$0]! > frequency[$1]!
        }
    }
    
    return Set(sortedArr.prefix(k)).count
}
