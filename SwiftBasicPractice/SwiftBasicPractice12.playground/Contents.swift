// 구조체

// MARK: 프로퍼티 및 메소드
struct Sample{
    var mutableProperty:Int = 100 // 가변 프로퍼티
    let immutableProperty:Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티 (static)
    
    //인스턴스 메소드
    func instanceMethod() {
        print("instance Method")
    }
    static func typeMethod(){
        print("type Method")
    }
    
    
}

// MARK: 구조체 사용

//가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty=200
//mutable.immutableProperty=200

//불변 인스턴스
let immutable: Sample = Sample()
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

// 가변 인스턴스에서는 가변 프로퍼티를 수정할 수 있지만, 불변 프로퍼티는 수정할 수 없고
// 불변 인스턴스에서는 가변 프로퍼티와 불변 프로퍼티 둘 다 수정할 수 없다.

//타입 프로퍼티 및 메소드
Sample.typeProperty = 300
Sample.typeMethod() // type Method

//타입 프로퍼티나 타입 메소드의 경우엔 타입에서 사용해주는 것이기 때문에 인스턴스에서는 사용이 불가능하다.
//mutable.typeProperty = 400
//mutable.typeMethod()

//MARK: 학생 구조체
struct Student{
    var name:String = "unknown"
    var `class`: String = "Swift"
    //Swift에서 class는 이미 사용되는 키워드기 때문에 강세표를 사용해줘야한다
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(self.class)반 \(name)입니다.")
    }
    
    
    
}

Student.selfIntroduce()

var jungwoo:Student = Student() //가변 인스턴스
jungwoo.name = "jungwoo"
jungwoo.class = "스위프트"
jungwoo.selfIntroduce() //저는 스위프트반 jungwoo입니다.

let jina: Student = Student()
//불변 인스턴스이므로 값 변경 불가
jina.selfIntroduce()

