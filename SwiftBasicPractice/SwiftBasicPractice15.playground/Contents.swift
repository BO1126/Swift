// Class / Struct / Enum

// Value는 데이터를 전달할 때 값을 복사하여 전달하지만
// Reference는 데이터를 전달할 때 값의 메모리 위치를 전달한다.

// MARK: Class vs Struct & Enum

struct ValueType{
    var property = 1
}

class ReferenceType{
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property: \(firstStructInstance.property)")
print("second struct instance property: \(secondStructInstance.property)")

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property: \(firstClassReference.property)")
print("second class reference property: \(secondClassReference.property)")
// class의 경우엔 값이 복사되는 것이 아니라 참조값이 복사되기 때문에 둘 다 변경되었다.


