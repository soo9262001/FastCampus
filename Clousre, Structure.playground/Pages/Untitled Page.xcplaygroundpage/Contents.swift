import UIKit

// Simple Closure 코드블록

let simpleClosure = {
    print("Closure Ok")
}

simpleClosure()

// input, parameter 받는 Closure
let simpleClosure2: (String) -> Void = { name in
    print("이름 \(name)")
}

simpleClosure2("Ms")

// 값을 리턴하는 Closure

let simpleClosure3: (String) -> String = { name in
    let message = "iOS 개발, \(name) 님"
    return message
}

let result = simpleClosure3("K")
print(result)

// Closure를 파라미터로 받는 함수

func simpleFunction(simpleClosure: () -> Void) {
    print("함수에서 호출 완료")
    simpleClosure()
}

simpleFunction(simpleClosure: {
    print("from Closure")
})

// Trailing Closure

func simpleFuncton2(message: String, simpleClosure: () -> Void) {
    print(message)
    simpleClosure()
}

simpleFuncton2(message: "iOS 개발", simpleClosure: {
    print("from Closure")
})


// ----------- Structure -----------------
// ----------- Protocol ------------------  (서비스들을 이용하기 위한 목록)



// 1. 강의 이름, 가사 이름, 학생 수를 가지는 Struct
struct Lecture: CustomStringConvertible {
    var description: String {
        return "Title: \(name), Instructor: \(instructor)_"
    }
    
    let name: String
    let instructor: String
    let numOfStudent: Int
}

// 2. 강의 어레이와 강사이름을 받아서 해당 강사의 강의 이름을 출력함수 만들기
func printLectureName(from instructor: String, lectures: [Lecture] ) {
    var lectureName = ""
    
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
    
    print("해당강사의 강의는 : \(lectureName)")
}

func printLecture(from instructor: String, lectures: [Lecture]) {
    let lectureName = lectures.first { (lec) -> Bool in
        return lec.instructor == instructor
        
    }?.name ?? ""
    
    print(lectureName)
}

let lec1 = Lecture(name: "iOS", instructor: "J", numOfStudent: 5)
let lec2 = Lecture(name: "iOS2", instructor: "K", numOfStudent: 10)
let lec3 = Lecture(name: "iOS3", instructor: "L", numOfStudent: 15)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "K", lectures: lectures)
printLecture(from: "L", lectures: lectures)
