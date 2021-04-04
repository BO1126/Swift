/* 반복문 */
var integers = [1,2,3]
let people = ["jungwoo":20,"mike":14,"junhyen":19]

//MARK: for문
//python에서 자주 사용한 range대신 범위연산자를 사용하면 더 간단하게 해결된다
for i in 1...10{
    print(i)
}
for integer in integers{
    print(integer)
}

//Dictuonary의 item은 key와 value로 구성된 튜플 타입이기때문에 괄호로 싸줘야한다.
for (name,age) in people {
    print("\(name): \(age)")
}

//MARK: while문
while integers.count > 1 {
    integers.removeLast()
}

//MARK: repeat-while문
//다른 언어의 do-while문과 같다
//do가 아닌이유는 swift에서 do는 오류처리로 사용되고 있기때문이다.
repeat{
    integers.removeLast()
}while integers.count>0

