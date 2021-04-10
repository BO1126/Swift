// MARK: 프로퍼티
/*
 저장 프로퍼티(stored property)
 연산 프로퍼티(computed property)
 인스턴스 프로퍼티(instance property)
 타입 프로퍼티(type property)
 */

// 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
// 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.
// 연산 프로퍼티는 var(변수)로만 선언할 수 있습니다.

struct Student {
    
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var westernAge: Int {
        get{
            return koreanAge - 1
        }
        set(inputValue){
            koreanAge = inputValue + 1
        }
    }
    //타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    //읽기 전용으로 구현하게 되면 기존의 매개변수가 없고 반환값이 없는 함수 대체가 가능하다
    // 읽기전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String{
        get {
            return "저는 \(self.class)반 \(name)입니다."
        }
    }
    
    //타입 메소드같은 경우에도 대체가 가능하다
    // 읽기전용 타입 연산 프로퍼티
    static var selfIntroduction: String {
        return "학생타입입니다."
    }
    
}

//MARK: - 사용

//타입 연산 프로퍼티 사용
print(Student.selfIntroduction)

//인스턴스 생성
var jungwoo: Student = Student()
jungwoo.koreanAge = 20

//인스턴스 저장 프로퍼티 사용
jungwoo.name = "jungwoo"
jungwoo.class = "스위프트"

print(jungwoo.selfIntroduction)

print("제 한국나이는 \(jungwoo.koreanAge)이고, 미국 나이로는 \(jungwoo.westernAge)입니다.")

//MARK: - 응용

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double{
        get{
            return dollar * currencyRate
        }
        set{
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)

//MARK: - 지역변수, 전역변수
//저장 프로퍼티와 연산 프로퍼티의 기능은
//함수, 메소드, 클로저, 타입 등의 외부에 위치한
// 지역 / 전역 변수에도 모두 사용 가능합니다.

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a+b
}

print(sum)


