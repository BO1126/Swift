//상속
// 스위프트의 상속은 클래스, 프로토콜 등에서 가능합니다
// 열거형, 구조체는 상속이 불가능 합니다
// 스위프트는 다중상속을 지원하지않습니다
// 이번 파트에서는 클래스의 상속에 대해 공부해볼겁니다

//MARK: - 클래스의 상속과 재정의

class Person {
    var name: String = ""
    func selfIntroduce(){
        print("저는 \(name)입니다")
    }
    // 재정의 불가능 프로퍼티
    final func sayHello(){
        print("Hello")
    }
    // 재정의 불가능 타입 메소드 - static
    static func typeMoethod(){
        print("type mothod - static")
    }
    // 재정의 가능 타입 메소드 - class
    class func classMethod(){
        print("type method - class")
    }
    //재정의 가능한 class 메소드라도
    //final 키워드를 사용해주면 자식 클래스에서도 재정의할 수 없습니다
    //메소드 앞에 `static`과 `final class`는 똑같은 역할을 합니다
    final class func finalClassMethod(){
        print("type method - final class")
    }
    
}

class Student: Person {
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    override class func classMethod() {
        print("overriden type method - class")
    }
    // static을 사용한 타입 메소드는 재정의할 수 없습니다
    // final 키워드를 사용한 메소드, 프로퍼티는 재정의 할 수 없습니다
}

let jungwoo: Person = Person()
let hana: Student = Student()

jungwoo.name = "jungwoo"
hana.name = "hana"
hana.major = "iOS develop"

jungwoo.selfIntroduce()

hana.selfIntroduce()

Person.classMethod()

Person.typeMoethod()

Person.finalClassMethod()

Student.classMethod()

Student.typeMoethod()

Student.finalClassMethod()
