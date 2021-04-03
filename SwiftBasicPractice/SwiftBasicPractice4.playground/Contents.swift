import UIKit

// Any - Swift의 모든 타입을 지칭하는 키워드
// AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
// nil - 없음을 의미하는 키워드 (null)

//MARK: Any
var someAny:Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 3.14

//let someDouble : Double = someAny X

//MARK: AnyObject
class SomeClass{
}
var someAnyObject:AnyObject = SomeClass()

//someAnyObject = 3.14 X

//MARK: nil
//someAny = nil X 어떤 데이터 타입도 넣을수있지만 nil값은 넣을수없다.
//someAnyObject = nil X
