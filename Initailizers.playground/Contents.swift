import UIKit

// 필수생성자
class Person {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Member: Person {
    var point = 0
    
    init() {
        point = 0
        super.init(name: "Unknown")
    }
    
    // 멤버를 상속한 다른 서브클래스에서도 이 생성자를 구현하도록 강제하기위해서 똑같이
    required init(name: String) {
        point = 0
        super.init(name: name)
    }
    
}
