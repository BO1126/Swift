import UIKit

// 함수 고급
// 기본값을 갖는 매개변수는 목록 중에 뒤쪽에 위치하는 것이 좋다.
func numbers(a:String,b:Int=10) -> Int{
    
    return b
}
func greeting(friend:String,me:String="jungwoo"){
    print("Hello \(friend)! I'm \(me)!")
}

//매개변수 기본값을 가지는 매개변수는 생략 가능
greeting(friend: "jinhyen")
greeting(friend: "jinhyen",me: "jungwoo!")

//전달인자 레이블
//전달인자 레이블은 함수를 호출할 때 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다.
//func 함수이름(전달인자 레이블 매개변수이름:매개변수타입){}

//위 함수랑 동일한 이름이지만 전달인자 레이블을 사용하여 다른 함수로 취급됨
//함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용하고
//함수 외부에서 사용할 때에는 전달인자 레이블을 사용합니다.
func greeting(to friend:String,from me:String="jungwoo"){
    print("Hi \(friend) I'm \(me)!")
}
greeting(to: "jinhyen",from:"jungwoo!")

//가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
//가변 매개변수는 함수 하나당 하나만 가질 수 있습니다
//func 함수이름(매개변수이름:매개변수타입,매개변수이름:매개변수타입...){}
func sayHelloToFriends(me:String,friends:String...) -> String{
    return "Hello \(friends), im \(me)"
}

print(sayHelloToFriends(me: "jungwoo", friends: "jinhyen","byengwn","sanghyen"))
//값을 넣고 싶지 않을때는 생략해주면 됨
//nil 값이나 아무 값도 넣지 않으면 에러가 남
print(sayHelloToFriends(me: "jungwoo"))

//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다.
//스위프트의 함수는 일급 객체이므로 변수, 상수 등에 저장이 가능하고
//매개변수를 통해 전달도 가능합니다.

//MARK: 함수의 타입표현
//반환타입 생략 불가
var someFunction : (String,String) -> Void = greeting(to:from:)
someFunction("eric","jungwoo") //함수라는 타입을 가진 변수

someFunction = greeting(friend:me:) //이미 함수 타입으로 선언해준 변수에 다른 함수를 할당해줄때
someFunction("eric","jungwoo")
//들어있는 매개변수의 타입이 다르면 할당해줄 수 없다.
//someFunction = sayHelloToFriends(me:friends:) 이 경우에도 같은 String 타입이긴 하지만 friends가 가변 매개변수이기 때문에 불가능하다.


//runAnother이라는 함수에 function이라는 함수 타입을 가진 매개변수를 선언해서 함수를 실행할때 다른 함수를 매개변수 안에 넣어서 사용한다.
func runAnother(function:(String,String) -> Void){
    function("jenny","mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)





