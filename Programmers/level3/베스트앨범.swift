import Foundation

struct Record {
    let name: String
    let count: Int
    let index: Int
}

func map(_ genres: [String], _ plays: [Int]) -> [Record] {
    
    var records: [Record] = []
    
    for i in 0..<genres.count {
        records.append(Record(name: genres[i], count: plays[i], index: i))
    }
    
    return records
}

func getGenrePlayCount(_ genres: [String], _ record: [Record], _ genre: Set<String>) -> [(String, Int)] {
    var specificGenre: [(String, Int)] = []
    
    for g in genre {
        let numOfPlays = record.filter { $0.name == g }.map { $0.count }.reduce(0, +)
        specificGenre.append((g, numOfPlays))
    }
    
    return specificGenre.sorted { $0.1 > $1.1 }
}


func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    
    let genre = Set(genres)
    let record = map(genres, plays)
    let specificGenre = getGenrePlayCount(genres, record, genre)
    var result: [Int] = []
    
    for (genreName, _) in specificGenre {
        let filterList = record.filter { $0.name == genreName }.sorted { $0.count > $1.count }
        
        
        // prefix(2) 보다 시간 복잡도가 더 낮았다 (프로그래머스 환경 에서는)
        // 기존 조건문을 변경하고 싶어서 아래 처럼 변경
        // 기존 방식과 거의 유사하지만, `prefix(2)`의 사용을 피하며 코드 간결화
        for i in 0..<min(2, filterList.count) {
            result.append(filterList[i].index)
        }
    }
    
    return result   
}
