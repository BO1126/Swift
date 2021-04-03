import UIKit

// 컬렉션 타입
// Array, Dictionary, Set

//Array - 순서가 있는 리스트 컬렉션
var integers: Array<Int> = Array<Int>()
//var integers: Array<Int> = [Int]()
//배열에 값 추가
integers.append(1)
integers.append(100)

//해당 값이 포함되어있는지 확인
integers.contains(100)
integers.contains(99)

//해당 인덱스에 있는 값 삭제
integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

//몇개가 들어간지
integers.count





