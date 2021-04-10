//인스턴스 생성과 소멸

//이니셜라이저와 디이니셜라이저
//init deinit

//MARK: - 프로퍼티 기본값

// 스위프트의 모든 인스턴스는 초기화와 동시에
// 모든 프로퍼티에 유효한 값이 할당되어 있어야합니다
// 프로퍼티에 미리 기본값을 할당해두면
// 인스턴스가 생성됨가 동시에 초기값을 지니게 됩니다

class PersonA {
    //모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickname: String = "nickname"
}
let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 20
jason.nickname = "자손"

//MARK: - 이니셜라이저

// 프로퍼티 기본값을 지정하기 어려운 경우에는
// 이니셜라이저를 통해
// 인스턴스가 가져야 할 초기값을 전달할 수 있습니다

class PersonB {
    var name: String
    var age: Int
    var nickname: String
    
    init(name: String, age: Int, nickname: String) {
        self.name = name
        self.age = age
        self.nickname = nickname
    }
    
}

let hana: PersonB = PersonB(name: "hana", age: 30, nickname: "하나")

//MARK: 프로퍼티의 초기값이 꼭 필요 없을때
// 옵셔널을 사용!
class PersonC {
    var name: String
    var age: Int
    var nickname: String?
    
     convenience init(name: String, age: Int, nickname: String) {
        self.init(name: name, age: age)
        self.nickname = nickname
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny = PersonC(name: "jenny", age: 10)
let mike = PersonC(name: "mike", age: 20, nickname: "mikle")

//암시적 추출 옵셔널은
//인스턴스 사용에 꼭 필요하지만
// 초기값을 할당하지 않고자 할 때 사용
class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    func  goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy : Puppy = Puppy(name: "happy")
happy.owner = jenny
happy.goOut()

//MARK: 실패가능한 이니셜라이저
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
// 인스턴스 생성에 실패할 수 있습니다
// 인스턴스 생성에 실패하면 nil을 반환합니다
// 그래서 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다

class PersonD {
    var name: String
    var age : Int
    var nickname: String?
    
    init?(name: String, age: Int){
        if (0...120).contains(age) == false {
            return nil
        }
        if name.count == 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 110)

print(joker)
print(batman)

//MARK: 디이니셜라이저

//deinit은 클래스의 인스턴스가
//메모리에서 해제되는 시점에 호출됩니다
//인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil //donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
