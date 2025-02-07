//
//  PlanetDetailViewController.swift
//  PlanetPedia
//
//  Created by yk on 2/7/25.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    // 뷰컨 생성 시점에는 여기에 값이 없어서 옵셔널로 설정
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet {
            let img = UIImage(named: planet.englishName.lowercased())
            backgroundImageView.image = img
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
