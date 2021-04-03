import UIKit


//MARK: 함수 기본

//반환 값이 있는 함수
//func 함수이름(변수이름:변수타입,변수이름2:변수타입2) -> 반환값타입{
//  return 반환값
//}

func plus(a:Int,b:Int) -> Int{
    
    return a+b
}

plus(a: 10, b: 20)

//반환값이 없는 함수
//func 함수이름(변수이름:변수타입,변수이름2:변수타입2) -> Void{
//  함수구현부
//}
//void와 return 생략 가능
func printA(a:String){
    print(a)
}

//매개변수가 없는 함수
func maximumIntegerValue() -> Int{
    return Int.max
}

//매개변수와 반환값 모두 없는 함수
//Void 생략 가능
func hello() -> Void{
    print("Hello")
}

hello()

func bye(){print("bye")}

//함수 호출의 경우엔 매개변수가 있으면
plus(a: 10, b: 20)
//처럼 매개변수의 이름과 값을 모두 정의해줘야함



