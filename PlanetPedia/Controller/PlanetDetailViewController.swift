//
//  PlanetDetailViewController.swift
//  PlanetPedia
//
//  Created by yk on 2/7/25.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
