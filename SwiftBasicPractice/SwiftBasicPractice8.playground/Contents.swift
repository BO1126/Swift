//조건문

//MARK: if문
//python처럼 소괄호를 생략해도 되고 사용해도 되며
//차이점은 중괄호를 사용해야하고 생략해서는 안된다는 점이다.

let someInteger: Int = 200
if someInteger < 200 {
    print("someInteger < 200")
}
else if someInteger > 200{
    print("someInteger > 200")
}
else{
    print("someInteger = 200")
}

//스위프트에는 항상 Bool타입이 들어와야한다.
//someInteger는 Bool타입이 아닌 Int타입이기때문에
//if someInteger {} 처럼 써주면 컴파일 오류가 발생한다.


//MARK: switch문

//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}
//Swift의 특징 중 하나인 범위연산자를 사용하면 더욱 쉽고 유용하다.
//완벽히 명시된게 아니라면 default가 필수이다.
switch someInteger{
case 0:
    print("Zero")
case 1..<100: //범위연산자
    print("1~99")
case 100:
    print("100")
case 101...Int.max: //범위연산자와 max활용
    print("over 100")
default:
    print("???")
}

//정수 외의 대부분의 기본 타입도 스위치문에 사용이 가능하다
//break를 명시해줄 필요가 없다
//하나에 케이스에 모두 쓰게해주고 싶다면 case "jake","jungwoo": 처럼 명시해주면 가능하다.
//fallthrough라고 명시해주면 break를 사용하지않은것처럼 작동한다.
switch "jungwoo" {
case "jake":
    print("jake")
case "jungwoo":
    print("jungwoo!")
case "mike":
    print("mike")
default:
    print("how is me..")
}


