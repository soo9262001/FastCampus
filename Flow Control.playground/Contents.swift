import UIKit
import Foundation

var greeting = "Hello, playground"


//var i = 0
//while i < 10 {
//print(i)
//    i += 1
//}


print("while, 조건 -> 코드수행")
var i = 10
while i < 10 {
print(i)
//    if i == 5 {
//        break
//    }
    i += 1
}
print("repeat, 코드수행 -> 조건")
i = 10
repeat {
    print(i)
    i += 1
}while i < 10


// ---- For Loop

let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in closedRange {
    print("---> \(i)")
    sum += i
}

print(sum)

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "MS"
for i in closedRange {
    print(name)
}

for i in closedRange {
    if i % 2 == 0 {
        print("---> 짝수: \(i)")
    }
}

for i in closedRange where i % 2 == 0 {
    print("---> 짝수: \(i)")
}

for i in closedRange {
    if i == 3 {
        continue  // 스킵
    }
    print("---> \(i)")
}

for i in closedRange {
    for j in closedRange {
        print("구구단 : \(i) * \(j) = \(i*j)")
    }
}


// --- Switch

//let num = 10
//
//switch num {
//case 0:
//    print("0입니다")
//case 10:
//    print("10입니다")
//default :
//    print("그 외 수입니다 ")
//}

let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("집동물이네요")
default:
    print("잘 모르겠네요")
}

let num = 20

switch num {
case _ where num % 2 == 0:
    print("짝수")
default:
    print("홀수")
}


let cord = (x: 10, y: 10)

switch cord {
case (0,0):
    print("원점")
case (let x, 0):
    print("x축")
case (0, let y):
    print("y축")
case (let x, let y) where x == y:
    print("x랑 y 같음 \(x),\(y)")
case (let x, let y):
    print("\(x),\(y)")
}


func Price(_ price: Int, _ count: Int) {
    print("\(price * count)")
}

Price(3000,3)

func Present(가격 price:Int, 개수 count: Int) {
    print("\(price * count)")
}

Present(가격: 3000, 개수: 20)

func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatePrice = totalPrice(price: 10000, count: 3)
calculatePrice

// In-out parameter

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// -- Function as a param

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add

function(4,2)

function = substract
function(4,2)


func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a,b)
    print(result)
}
printResult(add, 10, 5)
printResult(substract, 10, 2)



//1. 성 이름을 받아서 fullname 출력하는 함수 만들기
func Name(first: String, last: String) {
    print("fullName : \(first) \(last)")
}
Name(first: "Kim", last: "Min su")
//2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수
func Named(_ first: String, _ last: String) {
    print("fullName : \(first) \(last)")
}
Named("Kim","Min su")
//3. 성, 이름을 받아서 fullname return 하는 함수
func returnName(first: String, last: String) -> String {
    return "\(first) \(last)"
}

let fullname = returnName(first: "Kim", last: "Min su")
fullname

