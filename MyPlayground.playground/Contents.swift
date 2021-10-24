import UIKit



//var greeting = "Hello, playground"
//
//let value = arc4random_uniform(100)
//print("----> \(value)")

// ---- Tuple
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinateNamed = (x : 2, y : 3)

let x2 = coordinateNamed.x
let y2 = coordinateNamed.y

let (x3, y3) = coordinateNamed
x3
y3


// --- Boolean

let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive {
    print("---> 참")
} else {
    print("---> 거짓")
}

//if 조건..... {
//    // 조건이 참인경우에 수행하는 코드를 여기다가...
//}else {
//    // 그렇지 않은 경우에 코드는 여기다가
//}

let a = 5
let b = 10

if a > b {
    print("---> a가 크다")
} else {
    print("---> b가 크다")
}


let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame {
    print("---> 이름이 같다")
} else {
    print("---> 이름이 다르다")
}

let isJason = name2 == "Jason"
let isMale = false

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale

//let greetingMessage: String
//if isJason {
//    greetingMessage = "Hello Jason"
//} else {
//    greetingMessage = "Hello Somebody"
//}
//print("Msg: \(greetingMessage)")

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"
print(greetingMessage)

