import UIKit

var carName: String?
carName = nil
carName = "탱크"

// 간단과제
var peopleName: String?

let num = Int("10")
type(of: num!)

// 고급 기능 4가지

// Forced unwrapping  >  억지로
// Optional binding(if let)  > 부드럽게
// Optional binding(guard) > 부드럽게
// Nil coalescing. > 값이 없으면 디폴트

print(carName!)


if let unwrappedCarName = carName {
    print(unwrappedCarName)
}else {
    print("Car Name 없다")
}

func printParsed(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    }else {
        print("Int 컨버팅 불가")
    }
}

printParsed(from: "100")

func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int 컨버팅 불가")
        return
    }
    print(parsedInt)
}

printParsedInt(from: "헬로우")

let myCarName: String = carName ?? "모델 S"  // 디폴트 값 시 모델 S


// --- 도전 과제
// 1. 음식이름을 담는 변수 작성
let FoodName: String? = "치킨"
// 2. 옵셔널 바인딩을 이용해서 값을 확인
if let foodName = FoodName {
    print(foodName)
}else {
    print("nothing")
}
// 3. 닉네임을 받아서 출력하는 함수, 조건 입력 파라미터는 String?
func printName(name: String?) {
    guard let nickName = name else {
        print("nothing")
        return
    }
    print(nickName)
}


printName(name: nil)

// ---------------- Array    ------------------------------------------

var evenNumbers: [Int] = [2,4,6,8]

// 추가
evenNumbers.append(10)
evenNumbers += [12,14,16]
evenNumbers.append(contentsOf: [18,20])

evenNumbers.count

let firstIndex = evenNumbers.first

if let firstElement = evenNumbers.first {
    print("첫번째입니다")
}
// 최소, 최대
evenNumbers.min()
evenNumbers.max()

// 인덱스 값
var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

let firstThree = evenNumbers[0...2]
evenNumbers.contains(3)

evenNumbers.insert(0, at: 0)
evenNumbers.remove(at: 0)

evenNumbers[0] = -3
evenNumbers


for numbers in evenNumbers {
    print(numbers)
}

for (index,num) in evenNumbers.enumerated() {
    print("\(index), \(num)")
}

// 현재 영역 영향없이 값만큼 털고 출력
evenNumbers.dropFirst(4)


// --- Dictionary (key value 값으로 저장)

var scoreDic: [String: Int] = ["Json": 80,"Jay": 70, "Jack": 90]

if let score = scoreDic["Json"] {
    score
}else {
    
}

scoreDic["Jay"]

scoreDic.isEmpty
scoreDic.count

// 업데이트, 추가, 제거
scoreDic["Json"] = 10
scoreDic

scoreDic["Jake"] = 99
scoreDic

scoreDic["Jack"] = nil
scoreDic

for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for name in scoreDic.keys {
    print(name)
}

// 1.이름, 직업, 도시 본인 딕셔너리
// 2. 도시를 부산으로 업데이트
// 3. 딕셔너리를 받아서 이름과 도시 프린트 함수

var myInfo : [String: String] = ["name": "MS", "job": "학생", "city": "천안"]
myInfo["city"] = "서울"
myInfo

func NameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    }else{
        print("nothing")
    }
        
}

NameAndCity(dic: myInfo)



// --- ---------    Set   ------------------------------

//var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]  // 중복 제거

someSet.isEmpty
someSet.count

someSet.contains(4)

someSet.insert(5)
someSet

someSet.remove(1)
someSet


// -------------------  Closure  (이름 없는 메서드)-----------
// Global, Nested, Closure Expressions      3가지 타입

var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

let result = multiplyClosure(3,4)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 3, b: 2, operation: multiplyClosure)

operateTwoNum(a: 3, b: 2) { a, b in
    return a + b
}

let voidClosre: () -> Void = {
    print("iOS")
}

voidClosre()

// Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()

count


// Completion Block
// 
