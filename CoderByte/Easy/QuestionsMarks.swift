//
//
//
//
//  Created by 이명진 on 11/15/24.
//
//  구현

import Foundation

func QuestionsMarks(_ str: String) -> String {
    
    var digit: Int = 0
    var count: Int = 0
    
    for i in str { // 물음표, 숫자, 그외의 문자
        
        if i == "?" {
            
            // 숫자 저장 안됐을때
            
            // 숫자가 저장 되지 않았고, 물음표 나오면 pass
            if digit == 0 {
                continue
            }
            
            
            // 숫자 저장 됐을때
            
            // 숫자가 저장 되었고, 물음표 나오면 count += 1
            if digit != 0 {
                count += 1
                continue
            }
            
            // 숫자 저장이 3 이라면 count, 숫자 저장 초기화
            if count == 3 {
                count = 0
                continue
            }
            
        } else if i.isNumber {
            
            // 숫자가 저장 되지 않았으면 숫자 저장, count = 0 으로 초기화
            if digit == 0 {
                digit = Int(String(i))!
                count = 0
            }
            
            // 숫자가 저장 되었고 count 가 3개가 되면 저장된수 + 현재수 = 10 인지 판별
            if digit != 0 && count == 3 {
                if digit + Int(String(i))! == 10 {
                    return "true"
                } else {
                    digit = 0
                    count = 0
                    continue
                }
            }
            
        } else {
            continue
        }
    }
    
    return "false"
    
}

