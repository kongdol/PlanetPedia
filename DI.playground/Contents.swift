import UIKit

protocol Filter {
    func apply(to image: UIImage) -> UIImage
}

class NoirFilter: Filter {
    func apply(to image: UIImage) -> UIImage {
        print("느와르 필터 적용중,,,")
        return image
    }
}

class SkyFilter: Filter {
    func apply(to image: UIImage) -> UIImage {
        print("스카이 필터 적용중,,,")
        return image
    }
}

class OceanFilter: Filter {
    func apply(to image: UIImage) -> UIImage {
        print("오션 필터 적용중,,,")
        return image
    }
}

// export할때 필터를 반드시 적용해야 한다고 가정
class PhotoExporter {
    var filter: NoirFilter?
    
    func export(image: UIImage){
        guard let filter else {
            fatalError("필터가 필요합니다.")
        }
        filter.apply(to: image)
        
        
        print("사진을 익스포트 합니다.")
    }
}

let img = UIImage(systemName: "star")!
let exporter = PhotoExporter()
exporter.filter = NoirFilter()
exporter.export(image: img)


// 생성자로
class PhotoExporterIDI {
    private let filter: NoirFilter
    
    init(filter: NoirFilter) {
        self.filter = filter
    }
    
    func export(image: UIImage){
        filter.apply(to: image)
        print("사진을 익스포트 합니다.")
    }
}

let exporter2 = PhotoExporterIDI(filter: NoirFilter())
exporter2.export(image: img)

// 은닉성

// 의존관계 역전 원칙, DIP
// 고수준의 모듈은 저수준의 모듈에 의존하지 않고 추상화에 의존해야 한다.
// 추상화는 세부 구현에 의존하면 안된다. 세부 구현이 추상화에 의존해야 한다.

// 추상화
// 스위프트에서는 프로토콜로 구현가능

// 생성자로
class PhotoExporterII {
    var filter: Filter
    
    init(filter: Filter) { // Interface Injection
        self.filter = filter
    }
    
    func export(image: UIImage){
        filter.apply(to: image)
        print("사진을 익스포트 합니다.")
    }
}

let exporter3 = PhotoExporterII(filter: NoirFilter())
exporter3.export(image: img)
