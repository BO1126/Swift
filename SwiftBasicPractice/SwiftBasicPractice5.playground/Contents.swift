import UIKit

// 컬렉션 타입
// Array, Dictionary, Set

//Array - 인덱스가 있는 리스트 컬렉션
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

var doubles: Array<Double> = [Double]()

var strings: [String] = [String]()

var Characters: [Character] = [Character]()

//let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

//immutableArray.append(1) X

//MARK: Dictionary
// Key가 String타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary:Dictionary<String,Any> = [String:Any]()
var Dict:[String:Any]=[String:Any]()
anyDictionary["someKey"] = "someValue"
anyDictionary["anotherKey"] = 100

anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "someKey")

anyDictionary["antherKey"] = nil

let emptyDictionary : [String:String] = [:]
let initalizedDictionary: [String:String] = ["name":"jungwoo","age":"20"]

//let someValue: String = initalizedDictionary["name"]
// 위 문장은 name에 값이 있을수도 있고 없을수도 있는 불확실성 때문에 오류가 남
// 옵셔널 바인딩으로 해결 가능

//MARK: Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
//같은 값을 여러번 넣어도 중복이 존재하지 않음
integerSet.insert(20)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)

//contains로 안에 요소가 있는지 없는지를 true와 false로 확인 가능
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) // 합집합

let sortedUnion : [Int] = union.sorted() // Int 타입의 배열로 합집합 정렬

let intersection: Set<Int> = setA.intersection(setB) // 교집합
let subtracting: Set<Int> = setA.subtracting(setB) // 차집합











