import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("\(firstName) \(lastName)")
    }
}

class Student : Person {
    var grade: [Grade] = []
    
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let json = Student(firstName: "json", lastName: "Lee")

json.firstName

let math = Grade(letter: "B", points: 5, credits: 3)
json.grade.append(math)

json.grade.count


class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    // 함수 바꿀시 override
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = StudentAthelete(firstName: "QWE", lastName: "RTY")
var athelete2 = FootballPlayer(firstName: "HM", lastName: "Son")

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete1.train()
athelete2.train()

athelete1.trainedTime
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelete
athelete1.train()
athelete1.trainedTime

// ---------------------- 클래스 상속 사용 경우 -------------------------------
//                    Single Responsibility  단일 책임
//                        Type Safty   타입이 분명해야할 때
//                     Shared Base Classes 다자녀 있을시
//                        Extensibility  확장성이 필요시
//                          Idenetity  정체 파악을 위해





