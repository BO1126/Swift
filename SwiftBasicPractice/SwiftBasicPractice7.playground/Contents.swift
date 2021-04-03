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




