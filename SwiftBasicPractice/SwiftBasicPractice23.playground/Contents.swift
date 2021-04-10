// 타입 캐스팅

//스위프트의 타입캐스팅은
//인스턴스의 타입을 확인하는 용도
//또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지
// 확인하는 용도로 사용합니다
// is, as를 사용합니다

/* 보통 생각하는 다른 언어에서의 타입캐스팅
 let someInt: Int = 100
 let someDouble: Double = Double(someInt)
 */
//스위프트에서는 그냥 더블 타입의 인스턴스를 새로 생성해주는거지 타입 캐스팅이 아니다

//타입 캐스팅을 위한 클래스 정의
class Person {
    var name: String = ""
    func breath(){
        print("숨을 쉽니다")
    }
    
}
class Student: Person {
    var school: String = ""
    func goToSchool(){
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT(){
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}

var jungwoo: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()

//MARK: - 타입 확인
//is를 사용하여 타입을 확인합니다

var result: Bool

result = jungwoo is Person
result = jungwoo is Student
result = jungwoo is UniversityStudent

result = hana is Person
result = hana is Student
result = hana is UniversityStudent

result = jason is Person
result = jason is Student
result = jason is UniversityStudent

if jungwoo is UniversityStudent {
    print("jungwoo는 대학생입니다")
    
}else if jungwoo is Student{
    print("jungwoo는 학생입니다")
}else if jungwoo is Person{
    print("jungwoo는 사람입니다")
}

switch jason {
case is Person:
    print("사람")
case is Student:
    print("학생")
case is UniversityStudent:
    print("대학생")
default:
    print("사람 아님")
}

switch jason {
case is UniversityStudent:
    print("대학생")
case is Student:
    print("학생")
case is Person:
    print("사람")
default:
    print("사람 아님")
}

//MARK: - 업 캐스팅
// as를 사용하여 부모 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 타입 정보를 전환해줍니다
// Any 혹은 AnyObject로도 타입정보를 변환할 수 있습니다
// 암시적으로 처리되므로 생략해도 무방합니다
var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
var jina: Any = Person() //as Any 생략 가능

//MARK: - 다운 캐스팅
// as? 또는 as!를 사용하여
// 자식 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 인스턴스의 타입정보를 전환해줍니다

//MARK: 조건부 다운 캐스팅
// as?

var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent //nil
optionalCasted = jina as? UniversityStudent //nil
optionalCasted = jina as? Student //nil


//MARK: 강제 다운 캐스팅
// as!

var forcedCasted: Student

optionalCasted = mike as! UniversityStudent
//optionalCasted = jenny as! UniversityStudent 런타임 오류
//강제로 다운 캐스팅 시키면 실제와 다르기때문에 오류가 난다

func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: jenny) // 등교를 합니다
doSomethingWithSwitch(someone: jungwoo) // 숨을 쉽니다

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: jenny) // 등교를 합니다
doSomething(someone: jungwoo) // 숨을 쉽니다
