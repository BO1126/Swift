// 옵셔널 바인딩 Optional Binding
func printName(_ name: String){
    print(name)
}

var myName:String! = nil



if let name:String = myName{
    printName(name)
}else{
    print("myname == nil")
}

// name 상수는 if-let 구문 내에서만 사용이 가능하다
// 여러 옵셔널 변수들을 한번에 바인딩 가능하다
var myname: String? = "jungwoo"
var yourName: String? = nil

if let name = myname, let friend = yourName{
    print("name = \(name) and friend = \(friend)")
}else{
    print("name or friend is nil")
}

yourName = "hanava"

if let name = myname, let friend = yourName{
    print("name = \(name) and friend = \(friend)")
}else{
    print("name or friend is nil")
}

// 옵셔널 강제 추출
printName(myname!)
//printName(myName!) 강제 추출시 안에 nil값이 들어있어서 오류가 뜸
// 안전한 방법이 아니기때문에 사용을 권하지않음
// 웬만하면 옵셔널 바인딩을 사용하도록 권장함

var optionalA:Int? = nil
var optionalB:Int! = nil

optionalA = 100
