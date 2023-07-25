//
//  ViewController.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emotionButtons: [UIButton]!
    
    //버튼마다 초기 값 필요. a버튼에 0 b버튼에 0 ...
    var buttonCount: [Int] = [0, 0, 0, 0, 0]
    
    //enum을 배열처럼
    var emotionList = Emotion.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionButton()
        
    }
    
    //버튼을 누르면, 클릭 수가 증가
    @IBAction func emotionButton(_ sender: UIButton) {
                
        buttonCount[sender.tag] = buttonCount[sender.tag] + 1
        print(buttonCount[sender.tag])
        
    }
    
    //버튼 디자인
    func designEmotionButton() {
        //이넘 배열 인덱스(버튼.태그) 접근했을 때
        for button in emotionButtons {
            switch emotionList[button.tag] {
            case .happy:
                button.layer.backgroundColor = UIColor.systemPink.cgColor
                button.setImage(UIImage(named: "emoji1"), for: .normal)
            case .smile :
                button.layer.backgroundColor = UIColor.orange.cgColor
                button.setImage(UIImage(named: "emoji2"), for: .normal)
            case .soso :
                button.layer.backgroundColor = UIColor.yellow.cgColor
                button.setImage(UIImage(named: "emoji3"), for: .normal)
            case .upset:
                button.layer.backgroundColor = UIColor.green.cgColor
                button.setImage(UIImage(named: "emoji4"), for: .normal)
            case .sad :
                button.layer.backgroundColor = UIColor.blue.cgColor
                button.setImage(UIImage(named: "emoji5"), for: .normal)
            }
            button.setTitle("", for: .normal)
        }
    }
    
}

