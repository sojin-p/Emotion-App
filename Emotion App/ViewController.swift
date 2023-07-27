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
    var count: [Int] = [0, 0, 0, 0, 0]
    let userdefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionButton()
        
//        userdefault.removeObject(forKey: "완전행복")
//        userdefault.removeObject(forKey: "적당미소")
//        userdefault.removeObject(forKey: "그냥그냥")
//        userdefault.removeObject(forKey: "좀속상한")
//        userdefault.removeObject(forKey: "많이슬픈")
    }
    
    //버튼을 누르면, 클릭 수가 증가 후 저장
    @IBAction func emotionButton(_ sender: UIButton) {
        let tag = sender.tag
        count[tag] += 1
        
        //저장
        userdefault.set(count[tag], forKey: "\(emotionList[tag])")
        print("\(emotionList[tag])지수는 \(userdefault.integer(forKey: "\(emotionList[tag])"))점")
        
    }
    
//    //저장
//    func saveValue(index: Int, value: Int) {
//        //1. 버튼을 누르면 저장
//        guard let emotion = Emotions(rawValue: index) else {
//            print("버튼의 태그 값에 nil 들어갈 수 있다.")
//            return
//        }
//
//        userdefault.set(value, forKey: "\(emotion)")
//
//        print("\(emotion)지수는 \(userdefault.integer(forKey: "\(emotion)"))점")
//
//    }
    
    //버튼 디자인
    func designEmotionButton() {
        //이넘 배열 인덱스(버튼.태그) 접근했을 때
        for button in emotionButtons {
            switch emotionList[button.tag] {
            case .완전행복:
                button.layer.backgroundColor = UIColor.systemPink.cgColor
                button.setImage(UIImage(named: "emoji1"), for: .normal)
            case .적당미소 :
                button.layer.backgroundColor = UIColor.orange.cgColor
                button.setImage(UIImage(named: "emoji2"), for: .normal)
            case .그냥그냥 :
                button.layer.backgroundColor = UIColor.yellow.cgColor
                button.setImage(UIImage(named: "emoji3"), for: .normal)
            case .좀속상한:
                button.layer.backgroundColor = UIColor.green.cgColor
                button.setImage(UIImage(named: "emoji4"), for: .normal)
            case .많이슬픈 :
                button.layer.backgroundColor = UIColor.blue.cgColor
                button.setImage(UIImage(named: "emoji5"), for: .normal)
            }
            button.setTitle("", for: .normal)
        }
    }
    
}

