# 프로그래머스 level 3 이중우선순위큐

import heapq

def solution(operations):
    heap = []

    for oper in operations:
        a, b = oper.split()
        b = int(b)

        # 삽입 연산
        if a == "I":
            heapq.heappush(heap, b)
        # 최댓값 연산
        elif a == "D" and b == 1:
            if len(heap) != 0:
                max_value = max(heap) # 시간 복잡도가 오류 날 것 같았는데, 딱히 나진 않았다.
                heap.remove(max_value)
        # 최솟값 연산
        else:
            if len(heap) != 0:
                heapq.heappop(heap)

    if len(heap) == 0:
        return [0, 0]
    else:
        return [max(heap), heapq.heappop(heap)]


print(solution(["I -45", "I 653", "D 1", "I -642", "I 45", "I 97", "D 1", "D -1", "I 333"]))
