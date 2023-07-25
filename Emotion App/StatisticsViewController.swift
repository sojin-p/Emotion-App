//
//  StatisticsViewController.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet var backgroundView: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designView()

    }
    
    func designView() {
        for (index, view) in backgroundView.enumerated() {
            view.backgroundColor = colorList()[index]
            view.layer.cornerRadius = 20
            view.layer.shadowOffset = CGSize(width: 1, height: 1)
            view.layer.shadowColor = UIColor.lightGray.cgColor
            view.layer.shadowOpacity = 0.3
            view.layer.shadowRadius = 2
        }
    }
    
    func colorList() -> [UIColor] {
        let colorList: [UIColor] = [.systemPink, .orange, .yellow, .green, .blue]
        return colorList
    }

}