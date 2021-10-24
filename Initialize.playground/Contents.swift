import UIKit

// ---------------- Initailizer 생성자 ---------------------------

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

class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        self.train()
    }
    
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
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


//  ---------- designate    convienience  -------------
//.          자신의 부모 호출.      이니셜라이스 클래스 호출
