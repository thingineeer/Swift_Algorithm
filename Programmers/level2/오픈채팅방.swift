import Foundation

enum roomType {
    case roomIn
    case roomOut
}

func inMessage(_ m: String) -> String {
    return "\(m)님이 들어왔습니다."
}

func outMessage(_ m: String) -> String {
    return "\(m)님이 나갔습니다."
}

func solution(_ record:[String]) -> [String] {
    
    var room: [(roomType, String)] = []
    var userDict: [String: String] = [:]
    var result: [String] = []
    
    for rec in record { // O(N)
        let user = rec.split(separator: " ").map { String($0) }
        let action = user[0]
        let userId = user[1]

        if user[0] == "Enter" {
            userDict[userId] = user[2]
            room.append((.roomIn, userId))
        } else if user[0] == "Change" {
            userDict[userId] = user[2]
        } else {
            room.append((.roomOut, userId))
        }
    }
    
    for user in room { // O(N)
        let type: roomType = user.0
        
        guard let nickname = userDict[user.1] else { continue }
        
        switch type {
        case .roomIn:
            result.append(inMessage(userDict[user.1]!))
        case .roomOut:
            result.append(outMessage(userDict[user.1]!))
        }
        
    }
    
    return result
}
