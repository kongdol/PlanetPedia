//
//  PlanetDetailViewController.swift
//  PlanetPedia
//
//  Created by yk on 2/7/25.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var detailCollectionView: UICollectionView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    private let planet: Planet
    
    init?(planet: Planet, coder: NSCoder){
        self.planet = planet
        
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 뷰컨 생성 시점에는 여기에 값이 없어서 옵셔널로 설정
    // var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let img = UIImage(named: planet.englishName.lowercased())
        backgroundImageView.image = img

    }
}

extension PlanetDetailViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 3
        case 2:
            return planet.satellites.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PlanetSummaryCollectionViewCell.self), for: indexPath) as! PlanetSummaryCollectionViewCell
            
            cell.korNameLabel.text = planet.koreanName
            cell.engNameLabel.text = planet.englishName
            cell.descriptionLabel.text = planet.description
            
            return cell
            
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PlanetInfoCollectionViewCell.self), for: indexPath) as! PlanetInfoCollectionViewCell
            
            cell.titleLabel.text = "거리"
            cell.valueLabel.text = "1만"
            cell.unitLabel.text = "km"
            
            return cell
            
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SatelliteCollectionViewCell.self), for: indexPath) as! SatelliteCollectionViewCell
            
            let target = planet.satellites[indexPath.item]
            cell.sateliteNameLabel.text = target.koreanName
            cell.sateliteSummaryLabel.text = target.summary
            
            return cell
            
        default:
            fatalError("Check Section Count")
        }
    }
    
    
}
