//
//  StatisticsViewController.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet var backgroundView: [UIView]!
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var resultLabels: [UILabel]!
    
    let colorList: [UIColor] = [.systemPink, .orange, .yellow, .green, .blue]
    let userdefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designView()
        designTitleLabel()
        designResultLabel()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        reloadCount()
        
    }
    
    //불러오기
    func reloadCount() {
        for (index, emotion) in emotionList.enumerated() {
            let savedCount = userdefault.integer(forKey: "\(emotion)")
            resultLabels[index].text = "\(savedCount)점"
        }
    
    }
    
    func designResultLabel() {
        for (index, resultLabel) in resultLabels.enumerated() {
            switch index {
            case 0, 4: resultLabel.textColor = .white
            default:
                resultLabel.textColor = .black
            }
            resultLabel.textAlignment = .right
            resultLabel.font = UIFont.systemFont(ofSize: 30)
        }
    }

    func designTitleLabel() {
        for (index, title) in titleLabels.enumerated() {
            switch title.tag {
            case 0, 4: title.textColor = .white
            default: title.textColor = .black
            }
            title.text = "\(emotionList[index])지수"
        }
    }
    
    func designView() {
        for (index, view) in backgroundView.enumerated() {
            view.backgroundColor = colorList[index]
            view.layer.cornerRadius = 20
            view.layer.shadowOffset = CGSize(width: 1, height: 1)
            view.layer.shadowColor = UIColor.lightGray.cgColor
            view.layer.shadowOpacity = 0.3
            view.layer.shadowRadius = 2
        }
    }

}
