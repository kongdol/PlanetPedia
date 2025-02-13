//
//  Planet.swift
//  PlanetPedia
//
//  Created by yk on 2/6/25.
//

import UIKit

fileprivate let numberFormatter = NumberFormatter()



struct Planet {
    struct Satellite {
        let koreanName: String
        let englishName: String
        let size: Double // 지름 기준 (km)
        let summary: String
        let description: String
    }

    let koreanName: String
    let englishName: String
    let size: Double // 지름 기준 (km)
    
    var sizeString: String? {
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 1
        
        return numberFormatter.string(for: size)
    }
    
    
    let orbitalPeriod: Double
    
    var orbitalPeriodString: String? {
        let value = orbitalPeriod > 365 ? orbitalPeriod / 365 : orbitalPeriod
        
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        
        return numberFormatter.string(for: value)
    }
    
    let distanceFromEarthKM: Double // km 기준
    
    var distanceString: String? {
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 1
        
        return numberFormatter.string(for: distanceFromEarthKM)
    }
    
    
    let description: String
    let satellites: [Satellite]
}

let solarSystemPlanets: [Planet] = [
    Planet(koreanName: "수성",
           englishName: "Mercury",
           size: 4879.4,
           orbitalPeriod: 87.969,
           distanceFromEarthKM: 91_700_000,
           description: "수성은 태양에 가장 가까운 행성으로, 지구로부터는 약 9200만 킬로미터 떨어져 있습니다. 그 크기는 지구의 약 38%에 불과하며, 태양계에서 가장 작은 행성 중 하나입니다.",
           satellites: []),

    Planet(koreanName: "금성",
           englishName: "Venus",
           size: 12104,
           orbitalPeriod: 224.7,
           distanceFromEarthKM: 41_400_000,
           description: "금성은 지구에 가장 가까운 이웃 행성으로, 지름은 지구의 95%에 불과합니다. 그러나 그 표면은 지구와 매우 다르며, 매우 뜨겁고 거칠며 가시적인 활동이 없습니다.",
           satellites: []),

    Planet(koreanName: "지구",
           englishName: "Earth",
           size: 12742,
           orbitalPeriod: 365.256,
           distanceFromEarthKM: 0,
           description: "우리가 살고 있는 지구는 태양계에서 세 번째로 가까운 행성이며, 수명을 가진 유일한 행성으로 알려져 있습니다.",
           satellites: [
            Planet.Satellite(koreanName: "달",
                             englishName: "Moon",
                             size: 3474.2,
                             summary: "달은 지구의 유일한 자연 위성이며, 지구로부터 약 384,400킬로미터 떨어져 있습니다. 달은 지구의 무게의 약 1/81로, 지구에서 가장 가까운 천체입니다. 달은 지구의 해양 및 대기에 영향을 미치며, 그 결과로 조석력이 발생합니다. 1969년 7월 20일, 아폴로 11호의 미국 우주인들이 인류로서는 처음으로 달에 착륙하였습니다.",
                             description: """
                                달은 지구의 유일한 천연 위성으로 약 384,400 킬로미터의 거리에 위치해 있습니다. 지름은 대략 3,474 킬로미터로, 이는 지구의 약 1/4에 해당합니다. 약 45억 년 전에 지구와 크기가 화성 정도 되는 천체가 충돌한 결과로 생겨났다는 가장 널리 받아들여지는 이론인 '거대 충돌 가설'에 따르면 달이 형성되었다고 합니다.

                                달의 표면은 충돌에 의해 만들어진 기포처럼 보이는 크레이터, 화산 활동의 결과물, 그리고 물결치는 듯한 높고 낮은 지형으로 구성되어 있습니다. 이 중에서도 '바다'라고 불리는 어두운 부분들은 수십억 년 전 화산 활동의 결과입니다. 가장 눈에 띄는 크레이터 중 하나는 '타이코'라는 이름을 가진 대형 크레이터입니다.

                                달에는 실질적으로 대기가 없어, 이 때문에 달 표면의 온도는 극단적으로 변동합니다. 달 낮의 표면 온도는 약 127도 섭씨까지 올라가며, 밤에는 약 -173도 섭씨까지 떨어집니다.

                                달의 중력은 지구의 중력의 약 1/6에 불과해, 달에서의 무게는 지구에서보다 훨씬 가볍게 느껴집니다. 달의 낮은 중력과 대기 부족은 달 표면에서 발생하는 먼지가 오랫동안 공중에 머무르게 하며, 이는 달 상륙선이 착륙하거나 이착륙 할 때 문제를 일으킬 수 있습니다.

                                지구에서 볼 수 있는 달의 모습은 항상 같은 편만 보이는데, 이는 달이 지구를 한 바퀴 도는 데 필요한 시간과 달 자신이 한 바퀴 도는데 걸리는 시간이 같기 때문입니다. 이 현상을 '동기 회전'이라고 합니다.

                                1969년 7월 20일, 닐 암스트롱과 버즈 알드린을 탑승한 아폴로 11호가 인류 최초로 달에 착륙했습니다. 이후 1972년까지 총 6번의 달 착륙 미션을 수행했으며, 12명의 우주비행사가 달 표면을 밟았습니다.

                                아직 달에 대해 알아야 할 많은 것들이 남아있으며, 이를 위해 미래의 탐사 미션들이 계획되어 있습니다. 특히 물의 존재 여부, 그리고 달이 어떻게 형성되었는지에 대한 이해는 지구와 태양계의 역사를 이해하는 데 중요한 열쇠가 될 수 있습니다.
                                """)
           ]),

    Planet(koreanName: "화성",
           englishName: "Mars",
           size: 6779,
           orbitalPeriod: 686.971,
           distanceFromEarthKM: 78_300_000,
           description: "화성은 지구에서 두 번째로 가까운 이웃으로 알려져 있으며, '적색 행성'으로도 불립니다. 이는 철 산화물인 러스트 때문에 표면이 붉게 보이기 때문입니다.",
           satellites: [
            Planet.Satellite(koreanName: "포보스",
                             englishName: "Phobos",
                             size: 22.2,
                             summary: "포보스는 화성의 두 위성 중 더 큰 쪽이며, 화성 궤도를 약 7시간 39분에 걸쳐 한 바퀴 돕니다. 그릇 모양의 크레이터인 '스틱니'가 특징적입니다.",
                             description: """
                                포보스(Phobos)는 화성의 두 위성 중에서 가장 크고 가까이에 위치한 위성입니다. 그 이름은 그리스어로 '공포'를 뜻하며, 그리스 신화에서는 아레스(로마 신화의 마르스)의 아들 중 한 명입니다.

                                포보스는 1877년에 아메리칸 천문학자 아사프 홀에 의해 발견되었습니다. 이 위성은 비교적 작은 크기로 지름은 약 22.2km입니다. 표면은 크레이터와 돌멩이로 가득 차 있으며, 가장 눈에 띄는 특징 중 하나는 '스틱니'라고 불리는 큰 충돌 구조물입니다.

                                포보스는 화성에 매우 가까이서 회전하며, 이로 인해 화성에서 봤을 때 포보스는 동에서 서로 빠르게 이동하게 보입니다. 이는 포보스가 화성의 자전 주기보다 빠르게 화성을 공전하기 때문입니다.

                                포보스는 "tidal deceleration"이라는 현상으로 인해 점차 화성에 가까워지고 있습니다. 이 현상은 화성의 중력이 포보스에 끌어당기는 효과를 설명하는 것으로, 약 30~50백만 년 후에는 화성에 충돌할 것으로 예상되고 있습니다.

                                포보스의 구조와 성분에 대한 연구는 여전히 진행 중입니다. 일부 연구자들은 이 위성이 캡처된 소행성일 가능성을 제기했지만, 다른 이론은 포보스가 화성의 초기 충돌 이벤트로 생성되었을 것이라고 제안합니다. 이러한 논의는 포보스의 유래와 성질에 대한 궁금증을 해결하는데 기여하고 있습니다.
                                """),
            Planet.Satellite(koreanName: "데이모스",
                             englishName: "Deimos",
                             size: 12.6,
                             summary: "데이모스는 화성의 두 위성 중 더 작은 쪽이며, 궤도를 도는 데 약 30시간이 걸립니다. 상대적으로 부드럽고 평평한 표면을 가지고 있습니다.",
                             description: """
                                데이모스(Deimos)는 화성의 두 위성 중 더 작고 더 멀리 떨어져 있는 위성입니다. 그 이름은 그리스어로 '공포' 또는 '공포'를 의미하며, 그리스 신화에서는 전쟁의 신 아레스의 두 아들 중 하나입니다.

                                데이모스는 1877년에 아사프 홀에 의해 발견되었습니다. 이 위성은 작고 불규칙한 모양을 가지고 있으며, 가장 긴 축의 길이는 약 15km입니다. 데이모스의 표면은 크레이터와 돌멩이로 가득 차 있으며, 눈에 띄는 특징은 없습니다.

                                데이모스는 화성에 비교적 먼 거리에서 공전하고 있습니다. 이는 화성에서 데이모스를 관찰할 때, 데이모스가 공전하는 속도가 화성의 자전 속도보다 느리다는 것을 의미하며, 이로 인해 데이모스는 화성에서 봤을 때, 서에서 동으로 천천히 움직이게 보입니다.

                                데이모스에 대한 많은 연구가 진행 중이며, 일부 연구자들은 이 위성이 캡처된 소행성일 가능성을 제기하고 있습니다. 이러한 이론은 데이모스의 불규칙한 모양과 저밀도를 설명할 수 있습니다. 하지만 이는 아직 확정적인 것이 아니며 더 많은 탐사와 연구가 필요합니다.
                                """)
           ]),

    Planet(koreanName: "목성",
           englishName: "Jupiter",
           size: 139820,
           orbitalPeriod: 4332.59,
           distanceFromEarthKM: 628_700_000,
           description: "목성은 태양계에서 가장 큰 행성으로 알려져 있으며, 지구의 11배 크기에 이릅니다. 이는 태양계의 가스 거인 중 하나이며, 수많은 달을 가지고 있습니다.",
           satellites: [
            Planet.Satellite(koreanName: "이오",
                             englishName: "Io",
                             size: 3642.6,
                             summary: "이오는 활성 화산이 가장 많은 천체로 알려져 있으며, 이러한 화산 활동으로 인해 표면이 다양한 색상을 띠고 있습니다.",
                             description: """
                                이오(Io)는 목성의 네 개의 갈릴레오 위성 중 가장 가까운 위치에 있는 위성입니다. 이오는 화산 활동이 가장 활발한 천체로 알려져 있으며, 이는 그 위성의 가장 독특하고 눈에 띄는 특징 중 하나입니다.

                                이오는 지름이 약 3,660km로 지구의 달과 비슷한 크기입니다. 이오의 표면은 황과 황화합물로 덮여 있어서 밝은 노란, 빨간, 흰색으로 물들어 있습니다. 이 색상은 이오의 표면에 있는 수많은 화산과 관련이 있습니다.

                                이오의 화산 활동은 극단적으로 강력합니다. 목성의 강력한 중력이 이오를 끌어당겨 다양한 모양으로 늘어나고 수축하게 만들면서 내부의 열을 생성합니다. 이 열은 화산 활동을 일으키며, 이오의 표면은 수시로 변화하게 됩니다. 이로 인해 이오에는 임팩트 크레이터가 별로 없는 특이한 경우가 발생합니다. 왜냐하면 이오의 화산 활동이 계속해서 표면을 새롭게 만들기 때문입니다.

                                이오는 목성 주변을 약 1.77 지구일에 한 바퀴 돌며, 이는 지구에서 볼 때 항상 같은 면이 목성을 향하게 하는 동기 회전을 합니다.

                                이오는 그 독특한 모습과 화산 활동으로 인해 천문학자들에게 많은 관심을 받았습니다. 특히 이오의 화산 활동은 행성과 행성의 위성이 어떻게 열을 유지하고 분산시키는지 이해하는데 도움이 될 수 있습니다. 이오의 탐사는 천문학과 행성 과학에 중요한 역할을 하고 있습니다.
                                """),
            Planet.Satellite(koreanName: "유로파",
                             englishName: "Europa",
                             size: 3121.6,
                             summary: "유로파는 얼음으로 뒤덮인 표면 아래에 액체 상태의 바다가 존재할 것으로 추정되며, 따라서 외계 생명체의 존재 가능성을 탐색하는 데 큰 관심이 있습니다.",
                             description: """
                                유로파(Europa)는 목성의 네 가지 주요 위성인 갈릴레오 위성 중 하나입니다. 유로파는 태양계에서 가장 매끈한 천체로 알려져 있으며, 이는 그 위성의 가장 독특한 특징 중 하나입니다.

                                유로파의 지름은 대략 3,100km로 지구의 달과 비슷한 크기입니다. 그러나 이 위성의 가장 눈에 띄는 특징은 그 표면에 가로질러 연결된 깊은 갈라진 지형과 거의 충돌 흔적이 없다는 것입니다. 이는 유로파의 표면이 주로 물로 구성된 외부 크러스트인 강력한 얼음 층으로 덮여 있기 때문입니다.

                                과학자들은 유로파 아래의 두꺼운 얼음 층 아래에는 염분이 풍부한 액체 물이 존재하며, 이는 목성의 강력한 중력에 의해 발생하는 조석력에 의해 가열되고 있다고 추측하고 있습니다. 이러한 액체 해저에는 생명체가 존재할 수 있다는 이론이 제기되었으며, 이로 인해 유로파는 태양계 내에서 생명체를 찾는 데 가장 유망한 장소 중 하나로 간주되고 있습니다.

                                또한, 유로파의 표면 아래에 물이 존재한다면 이는 태양계 내의 다른 천체에서 물을 찾는 데 대한 가능성을 확장하며, 그것이 생명체에게 필수적인 요소인 것을 감안하면, 이는 외계 생명체를 찾는 탐색에서 중요한 역할을 할 수 있습니다.

                                유로파는 목성 주변을 약 3.55 지구일에 한 바퀴 돌며, 이는 지구에서 볼 때 항상 같은 면이 목성을 향하게 하는 동기 회전을 합니다.

                                이러한 흥미로운 특징들 때문에, 유로파는 미래의 우주 탐사 임무에서 중요한 목표가 되었습니다. 사실, NASA는 2030년대에 유로파를 방문하는 '유로파 클리퍼'라는 미션을 계획하고 있습니다. 이 미션의 목표는 유로파의 얼음 외피와 액체 해저의 복잡한 상호 작용을 이해하고, 생명체가 존재할 수 있는 조건을 더 잘 파악하는 것입니다.
                                """),
            Planet.Satellite(koreanName: "가니메데",
                             englishName: "Ganymede",
                             size: 5262.4,
                             summary: "가니메데는 태양계에서 가장 큰 위성으로, 심지어는 행성 목성보다도 큽니다. 또한, 자체적인 자기장을 가지고 있는 유일한 위성입니다.",
                             description: """
                                가니메데(Ganymede)는 목성의 가장 큰 위성이며, 또한 태양계에서 가장 큰 위성입니다. 지름이 약 5,268km로, 이는 수성보다도 크며, 목성의 약 1/3, 지구의 약 2/5 크기에 해당합니다. 이러한 크기로 인해 가니메데만의 자기장을 가질 수 있습니다.

                                가니메데는 갈릴레오 갈릴레이에 의해 1610년에 발견되었습니다. 가니메데의 표면은 얼음과 암석이 섞여 있으며, 크고 작은 수많은 충돌 크레이터로 가득합니다. 또한, 가니메데의 표면에는 어두운 지역과 밝은 지역이 교차하며 이는 고대의 충돌 크레이터와 젊은 지역을 나타냅니다.

                                가니메데는 그 자기장을 갖고 있는 유일한 위성으로 알려져 있습니다. 이 자기장은 가니메데 내부에 녹은 철핵이 존재함을 나타내며, 이는 가니메데가 다른 위성들과는 다르게 지구와 같이 외부 자기장을 갖고 있음을 의미합니다.

                                또한, 가니메데의 표면 아래에는 염분이 함유된 거대한 바다가 존재할 가능성이 제시되었습니다. 이는 가니메데가 생명체를 지원할 수 있는 가능성을 시사하며, 이에 대한 연구는 계속 진행 중입니다.

                                목성과 가까이에 있기 때문에, 가니메데는 강력한 방사선 환경에 노출되어 있습니다. 이는 가니메데를 방문하는 우주선에 도전이 될 수 있습니다. 그럼에도 불구하고, 가니메데는 그 고유의 특징들과 생명체 존재 가능성으로 인해 태양계 탐사에서 중요한 목표가 되고 있습니다.
                                """),
            Planet.Satellite(koreanName: "칼리스토",
                             englishName: "Callisto",
                             size: 4820.6,
                             summary: "칼리스토는 가장 큰 갈릴레오 위성 중 가장 바깥쪽에 위치해 있으며, 태양계에서 가장 오래된 지형 중 하나를 가지고 있다고 알려져 있습니다.",
                             description: """
                                칼리스토(Callisto)는 목성의 네 개의 주요 위성인 갈릴레오 위성 중에서 가장 바깥쪽에 위치한 위성입니다. 칼리스토는 우리 태양계에서 세 번째로 큰 위성으로, 지름은 약 4,820 킬로미터로 지구의 달보다 약 50% 더 큽니다.

                                칼리스토의 표면은 다른 갈릴레오 위성들에 비해 훨씬 더 오래되고 변화가 없는 것으로 보입니다. 그 표면은 거대한 충돌 크레이터와 고원으로 가득 차 있으며, 이는 태양계에서 가장 오래된 표면 중 하나로 추정됩니다. 또한, 이러한 크레이터들은 칼리스토가 지난 수십억 년 동안 크게 변하지 않았음을 시사합니다.

                                칼리스토의 내부는 대부분 암석과 얼음으로 이루어져 있습니다. 최근의 연구에서는 칼리스토의 표면 아래에 액체 물이 존재할 수 있다는 가설이 제기되었습니다. 이러한 지하 해저는 생명체가 존재할 수 있는 잠재적인 공간으로 볼 수 있습니다.

                                칼리스토는 목성 주변을 약 16.7 지구일에 한 바퀴 돕니다. 이 위성의 주기적인 궤도는 그 표면에 높은 방사선 환경을 초래하지 않으며, 이로 인해 칼리스토가 미래의 인류 탐사 미션의 잠재적 목표로 간주되고 있습니다.

                                칼리스토에 대한 연구는 여전히 진행 중이며, 이 위성의 진정한 복잡성과 그것이 우리 태양계의 이해에 어떻게 기여할 수 있는지에 대해 더 알아가고 있습니다.
                                """)
           ]),

    Planet(koreanName: "토성",
           englishName: "Saturn",
           size: 116460,
           orbitalPeriod: 10756.1995,
           distanceFromEarthKM: 1_275_400_000,
           description: "토성은 가장 잘 알려진 고리를 가진 행성으로, 가스 거인 중 하나입니다. 그것은 약 82개의 달을 가지고 있으며, 그 중 타이탄은 태양계에서 두 번째로 큰 달입니다.",
           satellites: [
            Planet.Satellite(koreanName: "타이탄",
                             englishName: "Titan",
                             size: 5150,
                             summary: "타이탄은 토성의 가장 큰 위성이며, 태양계에서 두 번째로 큰 위성입니다. 타이탄은 지름이 약 5150킬로미터로, 지구의 달보다 큽니다. 또한, 타이탄은 지구를 제외하고 액체를 표면에 가지고 있는 유일한 천체로 알려져 있습니다.",
                             description: """
                                타이탄(Titan)은 토성의 가장 큰 위성이며, 우리 태양계에서 크기가 두 번째로 큰 위성입니다. 지름은 약 5,150km로, 이는 지구의 달보다 크며, 심지어 목성의 가장 큰 위성인 가니메데보다도 큽니다.

                                타이탄은 주목할 만한 특징 중 하나는 그것이 태양계에서 지구와 함께 밀도가 높은 대기를 가진 유일한 천체라는 것입니다. 이 대기는 주로 질소로 구성되어 있으며, 메탄과 에테인이 풍부하게 있습니다. 이 대기 때문에 타이탄의 표면은 지구에서 직접 관찰할 수 없었습니다. 그러나 2005년에 헤이건스 탐사선(Huygens probe)이 타이탄의 표면에 착륙하면서 이를 바꾸었습니다.

                                헤이건스 탐사선은 타이탄의 표면이 복잡하고 다양하게 조각된 지형을 가지고 있음을 발견했습니다. 이 지형에는 강, 호수, 바다와 같이 지구에서 볼 수 있는 특징들이 포함되어 있습니다. 다만, 타이탄의 경우 이들은 액체 메탄과 에테인으로 이루어져 있습니다.

                                또한, 타이탄은 복잡한 메탄 기반의 날씨 시스템을 가지고 있습니다. 이 시스템은 구름을 형성하고 비를 내리며, 이 비는 표면의 강과 호수를 채우는 역할을 합니다. 이러한 과정은 지구의 수증기 주기와 비슷하지만, 이 경우에는 메탄이 수증기의 역할을 합니다.

                                타이탄은 토성 주변을 약 15.94 지구일에 한 바퀴 돌며, 그 중력은 지구의 중력의 약 14%에 해당합니다.

                                타이탄은 생명이 존재할 가능성이 있는 몇 안 되는 천체 중 하나로 간주되고 있습니다. 타이탄의 복잡한 유기 화합물과 액체 메탄 주기, 물의 존재 가능성 등은 생명이 발생하고 존재할 수 있는 조건을 제공할 수 있습니다. 이러한 이유로 타이탄은 태양계 탐사에 있어 중요한 목표 중 하나입니다.
                                """),
            Planet.Satellite(koreanName: "레아",
                             englishName: "Rhea",
                             size: 1527,
                             summary: "레아는 토성의 두 번째로 큰 위성입니다. 지름이 약 1527킬로미터로, 크기 순으로 세 번째인 디오네보다 약간 큽니다.",
                             description: """
                                레아(Rhea)는 토성의 두 번째로 큰 위성이며, 태양계에서 열 번째로 큰 위성입니다. 레아는 1672년에 이탈리아의 천문학자 지안 도메니코 카시니에 의해 발견되었습니다.

                                레아의 지름은 약 1,527km로, 지구의 달보다는 작습니다. 레아의 표면은 밝은 얼음과 어두운 암석으로 이루어져 있으며, 여러 개의 크레이터와 몇몇의 얼음 화산을 포함하고 있습니다. 표면은 매우 오래된 것으로 보이며, 크게 변화한 적이 거의 없는 것으로 추정됩니다.

                                레아는 토성을 중심으로 약 4.5일에 한 바퀴 돕니다. 이 때문에 토성에서 볼 때 항상 같은 면이 보입니다. 이런 현상을 동기 회전이라고 합니다.

                                레아에 대한 한 가지 흥미로운 점은 그 주변에 얇은 대기를 가지고 있을 수 있다는 것입니다. 이러한 대기는 레아의 얼음 표면이 태양에 의해 부서져서 생성되는 것으로 추정됩니다. 하지만 이 대기는 매우 얇아서, 실질적인 영향을 미치는 것은 아닙니다.

                                레아에 대한 우리의 이해는 여전히 제한적입니다. 향후 탐사 미션을 통해 이 위성의 복잡성과 그 역할에 대해 더 잘 이해할 수 있을 것으로 기대됩니다.
                                """),
            Planet.Satellite(koreanName: "이아페투스",
                             englishName: "Iapetus",
                             size: 1469,
                             summary: "이아페투스는 토성의 세 번째로 큰 위성으로, 두 가지 완전히 다른 색상의 표면으로 유명합니다.",
                             description: """
                                이아페투스(Iapetus)는 토성의 주요 위성 중 하나로, 특이한 모양과 두 가지 다른 색상의 표면으로 잘 알려져 있습니다.

                                이아페투스는 지름이 약 1,470km로 상당히 큰 위성입니다. 이것은 토성의 세 번째로 큰 위성이며, 태양계에서 열 번째로 큰 위성입니다. 그러나 이것은 토성의 가장 큰 위성인 타이탄에 비하면 아직 작은 편입니다.

                                이아페투스의 가장 독특한 특징 중 하나는 그 표면의 색상입니다. 이아페투스의 한 쪽 반구는 밝은 얼음으로 덮여 있어 아주 밝습니다. 그러나 다른 쪽 반구는 어두운 물질로 덮여 있어 아주 어둡습니다. 이러한 색상의 대조는 이아페투스를 '유일무이한 얼굴'을 가진 위성으로 만들었습니다.

                                또 다른 흥미로운 특징은 이아페투스의 형태입니다. 이아페투스는 수직으로 긴 산맥을 가지고 있는데, 이것은 이 위성을 독특하게 만드는 요소 중 하나입니다. 이 산맥은 이아페투스의 적도를 따라 뻗어 있으며, 일부 구간에서는 높이가 약 20km에 이릅니다.

                                이아페투스는 토성 주변을 약 79.3 지구일에 한 바퀴 돌며, 토성의 가장 외곽에 있는 주요 위성 중 하나입니다. 이아페투스에 대한 탐사는 아직 초기 단계에 있지만, 이 위성은 그 독특한 특징과 태양계의 이해에 기여할 수 있는 잠재력 때문에 많은 관심을 받고 있습니다.
                                """),
            Planet.Satellite(koreanName: "디오네",
                             englishName: "Dione",
                             size: 1123,
                             summary: "디오네는 토성의 네 번째로 큰 위성입니다. 이 위성은 얼음과 암석으로 이루어져 있으며, 수많은 크레이터와 얼음 화산을 가지고 있습니다.",
                             description: """
                                디오네(Dione)는 토성의 여러 위성 중 하나로, 토성에서 4번째로 큰 위성입니다. 지름은 약 1,123km로 토성의 가장 큰 위성인 타이탄의 크기의 약 1/5입니다.

                                디오네는 이탈리아 천문학자 지오바니 카시니에 의해 1684년에 발견되었습니다. 이 위성의 이름은 그리스 신화의 여신 디오네에서 가져왔습니다. 그녀는 토성(그리스 신화에서는 크로노스)의 딸이었습니다.

                                디오네의 표면은 얼음과 바위로 구성되어 있으며, 다양한 지형을 보여줍니다. 이 위성의 일부는 뾰족한 산, 깊은 협곡, 그리고 넓은 평원으로 이루어져 있습니다. 그 중 일부는 거대한 충돌로 인해 생긴 것으로 보이는 크레이터들로 가득 차 있습니다. 디오네의 표면에는 밝은 얼음이 많이 존재하며, 이로 인해 햇빛을 반사하여 밝게 보입니다.

                                디오네는 토성 주변을 약 2.7 지구일에 한 바퀴 돌며, 토성과 동기 회전을 합니다. 즉, 항상 같은 면이 토성을 향하고 있습니다.

                                디오네에 대한 많은 연구가 진행 중이며, 특히 그 지하에 액체 물 해저가 존재할 가능성에 대한 관심이 많습니다. 이러한 해저는 생명이 존재할 수 있는 장소로 생각되기 때문입니다. 디오네의 탐사는 태양계의 초기 역사를 이해하는 데 중요한 역할을 할 수 있습니다.
                                """),
            Planet.Satellite(koreanName: "테티스",
                             englishName: "Tethys",
                             size: 1062,
                             summary: "테티스는 토성의 다섯 번째로 큰 위성입니다. 이 위성은 거의 완전히 얼음으로 이루어져 있으며, 어마어마한 크기의 캐년을 가지고 있습니다.",
                             description: """
                                테티스(Tethys)는 토성의 여러 위성 중 하나로, 토성으로부터 5번째로 가까운 주요 위성입니다. 이 위성은 1684년에 프랑스의 천문학자 지안 도미니크 카시니에 의해 발견되었습니다.

                                테티스의 지름은 약 1,060 킬로미터로, 주로 얼음으로 이루어진 밀도가 낮은 천체입니다. 이로 인해 이 위성은 태양 빛을 많이 반사하여 상대적으로 밝게 보입니다. 테티스의 내부는 암석과 물 얼음으로 이루어져 있으며, 이 얼음 때문에 테티스는 태양계 내에서 가장 반사율이 높은 천체 중 하나입니다.

                                테티스는 몇 가지 독특한 특징을 가지고 있습니다. 가장 눈에 띄는 것은 엄청난 크기의 충돌 크레이터인 오딧세우스(Odysseus)와, 거의 전체 표면을 가로지르는 거대한 틈새인 이타카 스마(Ithaca Chasma)입니다. 오딧세우스는 지름이 400km로, 테티스의 거의 절반에 달하는 크기를 가지고 있습니다. 이타카 스마는 길이가 약 2,000km로 테티스의 원경을 거의 3/4 가량 가로지릅니다.

                                이러한 특징들은 어떤 과거의 대규모 충돌로 인해 발생했을 것으로 생각되며, 그 충돌이 테티스의 내부에서 물을 분출시켜 이타카 스마를 형성했을 가능성이 제기되었습니다. 이는 테티스가 한때 내부에 액체 물이 존재했을 가능성을 시사합니다.

                                테티스는 토성 주변을 약 1.9 지구일에 한 바퀴 돌며, 항상 같은 면이 토성을 향하도록 동기 회전을 합니다. 테티스와 같은 위성들에 대한 연구는 태양계의 초기 역사와 다른 천체의 진화 과정에 대한 이해를 높이는데 중요한 역할을 합니다.
                                """)
           ]),

    Planet(koreanName: "천왕성",
           englishName: "Uranus",
           size: 50724,
           orbitalPeriod: 30707.4896,
           distanceFromEarthKM: 2_724_500_000,
           description: "천왕성은 청록색 가스 거인으로, 태양으로부터 거리가 먼 행성 중 하나입니다. 그것은 격자형 고리를 가지고 있으며, 그 축은 거의 수평으로 기울어져 있습니다.",
           satellites: [
            Planet.Satellite(koreanName: "미란다",
                             englishName: "Miranda",
                             size: 471.6,
                             summary: "미란다는 천왕성의 가장 작은 소위성 중 하나로, 지구로부터 약 2억 9000만 킬로미터 떨어져 있습니다. 이 위성은 다양한 지형을 가지고 있어 '프랑클린트'라는 별칭을 가지고 있습니다.",
                             description: """
                                미란다(Miranda)는 천왕성의 주요 위성 중 하나로, 1948년에 제라드 카이퍼에 의해 발견되었습니다. 이름은 윌리엄 셰익스피어의 희곡 "템페스트"의 캐릭터에서 가져왔습니다.

                                미란다는 지름이 약 470 킬로미터로, 천왕성의 5개의 주요 위성 중에서 가장 작습니다. 그럼에도 불구하고, 미란다는 그 표면 지형이 가장 다양하고 복잡한 것으로 알려져 있습니다. 이 위성의 표면은 거대한 협곡, 고원, 독특한 지형 구조로 가득 차 있으며, 이 중 일부는 '낙석 궤적'이라 불리는 곳으로, 표면이 마치 거대한 충돌로 인해 '뒤집힌' 것처럼 보입니다.

                                미란다의 표면은 대부분 물 얼음으로 이루어져 있으며, 일부 지역에는 흔적이 남아 있을 수 있는 '낙석 궤적'과 같은 고요한 표면이 있습니다. 이런 특성은 미란다가 과거에 광범위한 지질 활동을 겪었을 가능성을 시사합니다.

                                미란다는 천왕성 주변을 약 1.4 지구일에 한 바퀴 돌며, 그 중력에 의해 동기 회전하고 있어 항상 같은 면이 천왕성을 향하고 있습니다.

                                미란다의 복잡한 지형과 역사는 여전히 수수께끼로 남아 있습니다. 더 많은 탐사와 연구가 필요하여 이 위성의 표면 특성과 구조, 그리고 이를 통해 우리 태양계의 초기 역사에 대한 더 깊은 이해를 얻을 수 있습니다.
                                """),
            Planet.Satellite(koreanName: "아리엘",
                             englishName: "Ariel",
                             size: 1158,
                             summary: "아리엘은 천왕성의 큰 위성 중 하나로, 이 위성의 표면은 대형 골짜기와 독특한 지형으로 가득 차 있습니다.",
                             description: """
                                아리엘(Ariel)은 천왕성의 주요 위성 중 하나로, 1851년에 영국 천문학자 윌리엄 라셀에 의해 발견되었습니다. 아리엘의 이름은 윌리엄 셰익스피어의 플레이 "템페스트"의 캐릭터에서 유래되었습니다.

                                아리엘의 지름은 약 1,160 킬로미터로, 천왕성의 다섯 개의 주요 위성 중에서 세 번째로 큽니다. 아리엘의 표면은 반쯤 얼음으로 이루어져 있으며, 반쯤은 암석으로 구성되어 있습니다. 이러한 구성은 아리엘이 태양계에서 가장 어두운 위성 중 하나로 만들어, 얼음의 녹는점이 암석의 녹는점보다 훨씬 낮기 때문입니다.

                                아리엘의 표면에는 다양한 지형적 특징이 있습니다. 그중에서도 가장 눈에 띄는 것은 폭이 넓은 협곡과 깊은 도랑입니다. 이는 아리엘의 표면이 얼음의 열팽창에 의해 깨지며 형성된 것으로 추정됩니다. 또한 아리엘의 표면에는 크레이터도 많이 발견되지만, 이들은 깊지 않고 얕은 것이 특징입니다.

                                아리엘은 천왕성 주변을 약 2.5 지구일에 한 바퀴 돕니다. 이는 천왕성의 자전 주기와 같으며, 이로 인해 항상 같은 면이 천왕성을 향하도록 동기 회전을 합니다.

                                아리엘에 대한 대부분의 지식은 1986년 보이저 2호 탐사선의 비행으로 얻어진 것입니다. 그 이후로는 천왕성과 그의 위성들에 대한 탐사 미션이 없었지만, 아리엘과 같은 천왕성의 위성들에 대한 더 많은 지식을 얻기 위해 미래의 미션을 계획하고 있습니다.
                                """),
            Planet.Satellite(koreanName: "엄브리엘",
                             englishName: "Umbriel",
                             size: 1169,
                             summary: "엄브리엘은 천왕성 주변에서 세 번째로 큰 위성입니다. 이 위성은 매우 어두운 표면을 가지고 있습니다.",
                             description: """
                                엄브리엘(Umbriel)은 천왕성의 다섯 개의 주요 위성 중 세 번째로 큰 위성입니다. 1851년에 영국의 천문학자 윌리엄 레셀이 발견했습니다.

                                엄브리엘의 지름은 약 1,170 킬로미터로, 이는 약 50% 정도 더 작은 지구의 달보다 조금 작습니다. 엄브리엘의 표면은 천왕성 주요 위성 중에서 가장 어둡습니다. 이로 인해 엄브리엘은 "천왕성의 가장 어두운 위성"으로 불리기도 합니다.

                                엄브리엘의 표면은 오래된, 크레이터로 가득 찬 풍경을 보여줍니다. 이 크레이터들 중 가장 유명한 것은 '우인델크'라는 이름의 크레이터로, 이 크레이터의 중앙에는 밝은 물질이 보입니다. 이 밝은 물질은 아마도 충돌로 인해 크레이터 아래의 물질이 표면으로 끌어올려진 것으로 생각됩니다.

                                엄브리엘의 내부 구조는 아직 완전히 이해되지 않았습니다. 그러나 그것은 아마도 암석과 얼음의 혼합물로 구성되어 있을 것으로 생각됩니다. 천왕성의 다른 위성들과 마찬가지로 엄브리엘도 천왕성 주변을 동기 회전하며 공전하고 있습니다. 이는 천왕성에서 항상 같은 면만 보인다는 것을 의미합니다.

                                엄브리엘에 대한 지식은 상당히 제한적이며, 이는 주로 1986년 보이저 2호의 플라이바이 때 얻은 정보에 의존하고 있습니다. 미래의 천왕성 탐사 미션에서는 엄브리엘과 천왕성의 다른 위성들에 대해 더욱 자세히 알아낼 수 있을 것으로 기대되고 있습니다.
                                """),
            Planet.Satellite(koreanName: "티타니아",
                             englishName: "Titania",
                             size: 1577.8,
                             summary: "티타니아는 천왕성의 가장 큰 위성으로, 지름이 약 1,578킬로미터에 이릅니다. 이 위성의 표면은 깊은 협곡과 열린 단절에 의해 표시되어 있습니다.",
                             description: """
                                티타니아(Titania)는 천왕성의 가장 큰 위성이며, 천왕성 주변에서 8번째로 가까운 위치에 있습니다. 티타니아는 1787년에 윌리엄 허셜이 발견한 천왕성의 첫 번째 위성입니다.

                                티타니아는 지름이 약 1,578 킬로미터로, 태양계 내에서 8번째로 큰 위성입니다. 티타니아의 내부는 암석과 얼음으로 이루어져 있으며, 밀도를 통해 추정한 이 위성의 대략적인 내부 구조는 약 50%의 얼음과 50%의 암석입니다.

                                티타니아의 표면은 크레이터와 깊은 협곡으로 가득 차 있습니다. 이 중에서도 가장 눈에 띄는 협곡은 메시아 협곡(Messina Chasma)으로, 이 협곡은 티타니아의 거의 전체를 가로질러 이어져 있습니다.

                                티타니아의 표면은 그리 밝지 않고, 약간 붉은 색조를 띠며, 이는 이 위성이 태양 빛에 노출되면서 발생하는 화학 반응, 특히 고 에너지 입자에 의한 표면 재료의 변화로 인한 것으로 생각됩니다. 티타니아의 표면 온도는 극단적으로 낮아, 약 -184도 섭씨입니다.

                                티타니아는 천왕성 주변을 약 8.7 지구일에 한 바퀴 돌며, 이는 이 위성이 천왕성에 대해 동기 회전을 하고 있음을 의미합니다. 이로 인해 티타니아는 항상 같은 면이 천왕성을 향하게 됩니다.

                                티타니아에 대한 우리의 이해는 여전히 제한적이며, 이는 1986년에 본격적으로 이 위성을 연구한 보이저 2호가 유일한 우리의 정보 출처이기 때문입니다. 그러나 미래의 우주 탐사 미션은 이 위성의 더욱 상세한 모습을 밝혀낼 것으로 기대되고 있습니다.
                                """),
            Planet.Satellite(koreanName: "오베론",
                             englishName: "Oberon",
                             size: 1522.8,
                             summary: "오베론은 천왕성의 두 번째로 큰 위성입니다. 이 위성은 대형 충돌 분화구와 열린 단절이 표면에 흔적을 남겼습니다.",
                             description: """
                                오베론(Oberon)은 천왕성의 가장 큰 위성 중 하나로, 천왕성의 가장 바깥쪽 주요 위성입니다. 이 위성은 1787년에 윌리엄 허셜에 의해 발견되었으며, 그의 플레이 "미드섬머 나이트의 꿈"의 등장인물인 요정 왕 오베론의 이름을 딴 것입니다.

                                오베론의 지름은 약 1,520 킬로미터로, 천왕성의 위성 중 두 번째로 큽니다. 이 위성은 암석과 물 얼음의 혼합체로 이루어져 있으며, 더 깊은 부분에는 바위와 물이 함께 얼어붙어 있을 것으로 추정됩니다. 오베론의 표면은 밝은 얼음과 어두운 암석이 섞여 있으며, 이는 태양 빛을 잘 반사하지 않아 상대적으로 어둡게 보입니다.

                                오베론의 표면에는 많은 충돌 크레이터와 몇 개의 큰 협곡이 있습니다. 이 중 가장 큰 크레이터는 "햄릿"으로, 지름이 206km에 이릅니다. 이 협곡들은 오베론이 형성되고 난 후 내부에서 열이 상승하여 얼음이 녹고 다시 얼면서 발생한 것으로 생각됩니다.

                                오베론은 천왕성 주변을 약 13.5 지구일에 한 바퀴 돕니다. 그리고 이 위성은 천왕성을 향해 항상 같은 면을 보이는 동기 회전을 합니다.

                                오베론에 대한 대부분의 지식은 1986년의 보이저 2호의 비행 때 얻어진 것이며, 그 이후로는 큰 관측이 이루어지지 않았습니다. 따라서 오베론과 천왕성 시스템에 대한 이해는 여전히 미미한 상태입니다. 하지만 오베론과 같은 위성에 대한 연구는 태양계의 외곽 부분에 대한 이해를 높이는데 중요한 역할을 합니다.
                                """)
           ]),

    Planet(koreanName: "해왕성",
           englishName: "Neptune",
           size: 49244,
           orbitalPeriod: 60223.3528,
           distanceFromEarthKM: 4_351_400_000,
           description: "해왕성은 태양계에서 가장 바깥쪽에 있는 행성으로, '얼음 거인'으로 알려져 있습니다. 해왕성은 강한 바람과 큰 폭풍으로 잘 알려져 있습니다.",
           satellites: [
            Planet.Satellite(koreanName: "트리톤",
                             englishName: "Triton",
                             size: 2706.8,
                             summary: "트리톤은 혜왕성의 가장 큰 위성으로, 혜왕성의 대기에서 메탄을 발견한 것으로 알려져 있습니다.",
                             description: """
                                트리톤(Triton)은 혜왕성의 가장 큰 위성으로, 태양계에서 일곱 번째로 큰 위성입니다. 트리톤은 1846년에 영국의 천문학자 윌리엄 렐스에 의해 발견되었습니다.

                                트리톤의 지름은 약 2,700 킬로미터로, 이는 지구의 달보다 조금 작은 크기입니다. 이 위성은 주로 바위와 질소 얼음으로 이루어져 있으며, 가장 특이한 점은 그 궤도가 다른 대부분의 위성과 반대 방향인, 즉 시계 반대 방향으로 혜왕성을 돌고 있다는 것입니다. 이러한 이유로, 트리톤은 아마도 혜왕성이 햇빛으로부터 멀리 떨어진 곳에서 포착한 쿠이퍼 벨트 객체일 가능성이 높다고 생각됩니다.

                                트리톤은 표면 온도가 매우 낮은, 태양계에서 가장 차가운 천체 중 하나입니다. 이런 저온 환경은 트리톤의 표면에서 유일하게 알려진 "얼음 화산" 활동을 가능하게 합니다. 이 화산은 질소나 메테인 같은 물질이 내부에서 압력을 받아 표면으로 토해져 나오면서 화산과 비슷한 형태를 이룹니다.

                                트리톤은 밝은 남극 빙하와 어두운 평원, 그리고 복잡한 지형으로 이루어진 표면을 가지고 있습니다. 가장 유명한 특징 중 하나는 "칸토르 멜론 껍질 지형"으로, 이는 얼음과 락이 어떻게 교대로 배치되어 있는지를 보여주는 복잡한 패턴입니다.

                                트리톤에 대한 대부분의 지식은 1989년 보이저 2호가 혜왕성 시스템을 방문했을 때 수집된 정보를 바탕으로 한 것입니다. 트리톤에 대한 이해는 태양계의 이 외곽 부분, 특히 쿠이퍼 벨트와 관련된 연구에 중요한 역할을 합니다.
                                """),
            Planet.Satellite(koreanName: "네레이드",
                             englishName: "Nereid",
                             size: 340,
                             summary: "네레이드는 혜왕성의 세 번째로 큰 위성이며, 매우 불규칙한 궤도를 가지고 있습니다.",
                             description: """
                                네레이드(Nereid)는 혜왕성의 세 번째로 큰 위성이며, 1949년에 제라드 쿠이퍼에 의해 발견되었습니다. 이름은 그리스 신화의 바다의 요정들인 네레이스에서 유래되었습니다.

                                네레이드의 지름은 약 340 킬로미터로, 주로 물 얼음으로 구성된 것으로 보입니다. 그러나 네레이드의 크기와 구성에 대한 정보는 제한적이며, 이에 대한 정확한 이해를 위해서는 추가적인 관측이 필요합니다.

                                네레이드의 가장 독특한 특징은 그 극도로 불규칙한 궤도입니다. 이는 태양계에서 알려진 위성 중에서 가장 이심률이 높은 궤도로, 혜왕성으로부터 최소 약 1,350,000 킬로미터에서 최대 약 9,650,000 킬로미터까지의 거리를 오가며 이동합니다. 이러한 불규칙한 궤도는 네레이드가 아마도 혜왕성 주변에 원래 있던 천체가 아니라, 나중에 혜왕성의 중력에 의해 포착된 천체일 가능성을 시사합니다.

                                네레이드는 혜왕성 주변을 약 360 지구일에 한 바퀴 돕니다. 그리고 이 위성은 혜왕성을 향해 항상 같은 면을 보이는 동기 회전을 합니다.

                                네레이드에 대한 대부분의 정보는 1989년에 보이저 2호가 혜왕성을 방문했을 때 수집되었습니다. 그러나 이 비행에서 네레이드에 대한 관측은 제한적이었으며, 따라서 이 위성에 대한 정확한 이해는 여전히 제한적입니다. 하지만 네레이드와 같은 위성에 대한 연구는 태양계의 외곽 부분에 대한 이해를 높이는데 중요한 역할을 합니다.
                                """),
            Planet.Satellite(koreanName: "프로테우스",
                             englishName: "Proteus",
                             size: 420,
                             summary: "프로테우스는 혜왕성의 두 번째로 큰 위성입니다. 그 표면은 대형 크레이터와 차원을 가지고 있습니다.",
                             description: """
                                프로테우스(Proteus)는 혜왕성의 두 번째로 큰 위성입니다. 이 위성은 1989년 보이저 2호 미션 중에 발견되었으며, 그 이름은 그리스 신화의 바다의 예언자 프로테우스에서 유래되었습니다.

                                프로테우스의 지름은 약 420 킬로미터로, 그 모양은 완벽한 구형이 아닌, 거친 감자 형태를 닮았습니다. 이런 비정규적인 형태는 프로테우스의 중력이 너무 약해 자체의 질량을 모아 구형으로 만들기에 충분하지 않기 때문입니다.

                                프로테우스의 표면은 여러 충돌 크레이터와 골짜기로 가득 차 있으며, 그 중 가장 큰 크레이터의 지름은 약 150 킬로미터입니다. 이 크레이터들은 표면의 특징을 알아보는 데 도움이 됩니다.

                                프로테우스는 혜왕성 주변을 약 1.1 지구일에 한 바퀴 돕니다. 프로테우스는 항상 혜왕성을 향해 같은 면을 보이는 동기 회전을 합니다. 이는 마치 지구의 달이 항상 지구를 향해 같은 면을 보이는 것과 같은 원리입니다.

                                프로테우스에 대한 우리의 지식은 대부분 보이저 2호 미션에서 얻어진 것이며, 그 이후로 이 위성에 대한 관찰은 많지 않았습니다. 그러나 이 위성은 태양계의 외곽 부분에 대한 이해를 높이는 데 중요한 역할을 합니다.
                                """),
            Planet.Satellite(koreanName: "라르",
                             englishName: "Larissa",
                             size: 194,
                             summary: "라르는 불규칙한 형태를 가지는 혜왕성의 위성 중 하나입니다.",
                             description: """
                                라르(Lar)은 혜왕성의 자연 위성 중 하나로, 아직까지는 혜왕성의 위성 중 가장 큰 것으로 알려져 있지 않습니다. 기준일인 2021년까지의 제 지식에는 라르에 대한 상세한 정보는 제한적입니다.

                                기존의 데이터를 기반으로 라르는 2005년에 발견되었고, 그 크기와 구조, 표면의 특성 등에 대한 정확한 정보는 아직 확립되지 않았습니다. 혜왕성의 위성 중에서 알려진 가장 큰 위성은 티티아니아(Titania)와 오베론(Oberon)으로, 이들에 대해서는 약간 더 많은 정보가 있습니다.

                                라르와 같은 먼 위성에 대한 연구는 과학자들이 태양계의 외곽 부분을 더 잘 이해하는 데 도움이 됩니다. 또한 이러한 위성들은 태양계 초기의 물질을 보존하고 있을 수 있으므로, 그들의 연구는 태양계의 역사와 진화에 대한 중요한 통찰력을 제공할 수 있습니다. 그러나 이러한 위성들을 연구하려면 강력한 망원경이나 우주선이 필요하며, 이러한 장비를 사용하여 데이터를 수집하고 분석하는 것은 상당한 시간과 자원을 필요로 합니다.
                                """),
            Planet.Satellite(koreanName: "데스피나",
                             englishName: "Despina",
                             size: 152,
                             summary: "데스피나는 혜왕성 주변을 빠르게 돌고 있는 작은 위성입니다.",
                             description: """
                                데스피나(Despina)는 혜왕성의 14개의 알려진 위성 중 하나로, 보이저 2호가 1989년에 혜왕성을 방문할 때 발견되었습니다. 이 위성의 이름은 그리스 신화의 뮤지컬 뮤즈 중 한 명인 데스피네에서 유래되었습니다.

                                데스피나의 지름은 약 150킬로미터로, 혜왕성 주위에서 네 번째로 크기를 가진 위성입니다. 그리고 이 위성은 혜왕성의 반지계 내부를 오가며 주기적으로 그 주변을 돌고 있습니다.

                                데스피나의 표면은 얼음과 암석으로 이루어져 있습니다. 이 위성은 보이저 2호가 통과하는 동안 그런 높은 해상도로 촬영되지 않았기 때문에 그 표면의 특징에 대해 정확히 알 수 없습니다.

                                데스피나는 혜왕성 주변을 약 0.33 지구일에 한 바퀴 돕니다. 그리고 이 위성은 혜왕성을 향해 항상 같은 면을 보이는 동기 회전을 합니다.

                                이 위성에 대한 대부분의 정보는 보이저 2호의 비행에서 얻어졌으며, 그 이후로 큰 관측이 이루어지지 않았습니다. 그러므로 데스피나에 대한 자세한 이해는 아직 제한적입니다. 그러나 이와 같은 작은 위성들에 대한 연구는 우리 태양계에 대한 전반적인 이해를 향상시키는 데 기여합니다.
                                """),
            Planet.Satellite(koreanName: "갈라테아",
                             englishName: "Galatea",
                             size: 158,
                             summary: "갈라테아는 혜왕성의 위성 중 하나로, 그 크기가 상대적으로 작습니다.",
                             description: """
                                현재까지 알려진 바로는, 갈라테아(Galatea)는 혜왕성의 다섯 번째로 큰 위성이며, 이는 혜왕성의 링 시스템에서 가장 밝은 내부 위성입니다. 갈라테아는 1989년 보이저 2호 탐사선이 혜왕성을 방문할 때 발견되었습니다. 이 위성의 이름은 그리스 신화에서 바다의 뉴레이드(물의 요정)인 갈라테아에서 유래되었습니다.

                                갈라테아의 지름은 대략 160킬로미터로 추정되며, 이는 약 100마일에 해당합니다. 이 위성의 밀도는 약 1.3g/cm³로, 이것은 대부분 얼음으로 이루어져 있다는 것을 시사합니다.

                                갈라테아는 아이리스(Arche)와 레아(Leah), 그리고 혜왕성의 가장 큰 링인 아담스 링(Adams Ring)의 궤도 공명(resonance)을 유지하는 것으로 알려져 있습니다. 이 링은 갈라테아의 중력에 의해 궤도가 안정화되며, 이 과정에서 복잡한 고리 구조를 형성합니다.

                                또한, 갈라테아는 동기 회전을 하고 있어, 혜왕성을 향한 한 쪽 면이 항상 같습니다. 이 위성은 혜왕성을 돌기 위해 대략 10 시간 정도가 걸립니다.

                                그러나, 갈라테아에 대한 우리의 지식은 아직도 매우 제한적입니다. 1989년의 보이저 2호의 비행 이후로, 이 위성에 대한 추가적인 관측이나 탐사가 이루어지지 않았기 때문입니다. 이런 이유로, 갈라테아의 정확한 구조, 표면 특성, 그리고 이 위성이 어떻게 형성되었는지에 대한 세부 사항은 아직 확실하지 않습니다.
                                """),
            Planet.Satellite(koreanName: "탈라사",
                             englishName: "Thalassa",
                             size: 80,
                             summary: "탈라사는 혜왕성 주변을 도는 가장 작은 위성 중 하나입니다.",
                             description: """
                                탈라사(Thalassa)는 혜왕성의 14개의 알려진 위성 중 하나로, 1989년 보이저 2호 탐사선의 비행 도중 발견되었습니다. 그 이름은 그리스 신화에서 바다의 여신인 탈라사(Thalassa)에서 유래되었으며, 공식적으로는 1991년에 이름이 부여되었습니다.

                                탈라사는 매우 작은 위성으로, 지름은 약 81 킬로미터입니다. 이 위성의 모양은 매우 불규칙적이며, 혜왕성을 중심으로 하는 궤도에서 약 50,000 킬로미터의 거리를 약 0.8 지구일에 한 바퀴 돌면서 회전합니다.

                                탈라사의 표면은 얼음으로 가득하며, 암석 물질의 함량은 상대적으로 적다고 생각됩니다. 이 위성에 대한 연구는 매우 제한적이며, 이에 대한 대부분의 정보는 보이저 2호의 단 한 차례의 비행에서 얻어진 것입니다.

                                한 가지 흥미로운 점은, 탈라사가 혜왕성의 또 다른 위성 네레이드(Nereid)와 비슷한 궤도를 가지고 있다는 것입니다. 이 두 위성은 궤도 높이와 방향에서 비슷한 특징을 보이며, 이는 과거에 어떤 대형 충돌 이벤트가 있었을 가능성을 시사합니다.

                                그러나 현재까지 탈라사에 대한 우리의 지식은 매우 제한적이며, 이 위성에 대한 더 많은 정보를 얻기 위해서는 추가적인 관측과 탐사가 필요합니다.
                                """)
           ])
]
