// MARK: 클래스

//MARK: 프로퍼티와 메소드
class Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메소드
    func instanceMethod(){
        print("instance Method")
    }
    
    // 타입 메소드
    static func typeMethod(){
        print("type Method - static")
    }
    
    // 재정의 가능 타입 매소드
    class func classMethod(){
        print("type Method - class")
    }
}

// MARK: 클래스 사용

var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200 // 가변 레퍼런스에 있는 불변 프로퍼티기 때문에 변경 불가능

let immutableReference: Sample = Sample()
immutableReference.mutableProperty = 200 // class는 구조체와 다르게 불변 레퍼런스여도 가변 프로피터는 값이 변경 가능
//immutableReference.immutableProperty = 200

//mutableReference.typeProperty = 400
//mutableReference.typeMethod()

//MARK: 학생 class

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce(){
        print("학생 타입메소드입니다")
    }
    
    func selfIntroduce(){
        print("저는 \(self.class)반 \(name)입니다.")
    }
    
}

Student.selfIntroduce()

var jungwoo: Student = Student()

jungwoo.name = "jungwoo"
jungwoo.class = "스위프트"
jungwoo.selfIntroduce()

let jina: Student = Student()
jina.name = "jina"
jina.class = "스위프트"
jina.selfIntroduce() //class는 구조체와 다르게 불변 레퍼런스여도 가변 프로퍼티는 변경가능하다는 점

