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
    
    return specificGenre
}

   

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    
    let genre = Set(genres)
    let record = map(genres, plays)
    let specificGenre = getGenrePlayCount(genres, record, genre)
    var result: [Int] = []
    
    for (genreName, _) in specificGenre {
        let filterList = record.filter { $0.name == genreName }.sorted { $0.count > $1.count }

        if filterList.count > 1 {
            for i in 0...1 {
                result.append(filterList[i].index)
            }
        } else {
            result.append(filterList[0].index)
        }
    }
    
    return result
}

