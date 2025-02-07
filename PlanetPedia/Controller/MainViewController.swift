//
//  ViewController.swift
//  PlanetPedia
//
//  Created by yk on 2/6/25.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var planetCollectionView: UICollectionView!
    
    // 생성자 주입
    @IBSegueAction func makeDetailVC(_ coder: NSCoder, sender: Any?) -> PlanetDetailViewController? {
        guard let cell = sender as? UICollectionViewCell, let indexPath = planetCollectionView.indexPath(for: cell) else {
            return nil
        }
        let selected = solarSystemPlanets[indexPath.item]
        
        return PlanetDetailViewController(planet: selected, coder: coder)
    }
    
    
    // DI 속성주입
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let cell = sender as? UICollectionViewCell, let indexPath = planetCollectionView.indexPath(for: cell){
//            let selected = solarSystemPlanets[indexPath.item]
//            
//            if let vc = segue.destination as? PlanetDetailViewController {
//                vc.planet = selected
//            }
//        }
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return solarSystemPlanets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PlanetCollectionViewCell
        
        let target = solarSystemPlanets[indexPath.item]
        cell.planetImageView.image = UIImage(named: "\(target.englishName.lowercased())-icon")
        cell.planetNameLabel.text = target.englishName
        
        return cell
        
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        guard let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout else {
            // 다운캐스팅 실패하면 셀에 표시 안됨
            return .zero
        }
        
        let width = Int((collectionView.bounds.width - (flowLayout.minimumInteritemSpacing + flowLayout.sectionInset.left + flowLayout.sectionInset.right)) / 2)
        
        return CGSize(width: width, height: width)
    }
}
