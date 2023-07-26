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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionButton()
        
    }
    
    //버튼을 누르면, 클릭 수가 증가
    @IBAction func emotionButton(_ sender: UIButton) {
        
        //차근 차근 Enum적용 해보기
        //3번 열거형(Enum)의 rawValue 활용
        guard let value = Emotion(rawValue: sender.tag) else {
            print("오류")
            return
        }
        
        let tag = sender.tag
        buttonCount[tag] += 1
        
        switch value {
        case .완전행복: print("\(buttonCount[tag])점")
        case .적당미소: print("\(buttonCount[tag])점")
        case .그냥그냥: print("\(buttonCount[tag])점")
        case .좀속상한: print("\(buttonCount[tag])점")
        case .많이슬픈: print("\(buttonCount[tag])점")
        }
        
        //2번 스위치로 바꿔보기
//        let tag = sender.tag
//        switch tag {
//        case Emotion.완전행복.rawValue:
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        case Emotion.적당미소.rawValue:
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        case Emotion.그냥그냥.rawValue:
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        case Emotion.좀속상한.rawValue:
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        case Emotion.많이슬픈.rawValue:
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        default:
//            print("오류")
//        }
        
        //1번 조건문
//        let tag = sender.tag
//        if tag == Emotion.완전행복.rawValue {
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        } else if tag == Emotion.적당미소.rawValue {
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        } else if tag == Emotion.그냥그냥.rawValue {
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        } else if tag == Emotion.좀속상한.rawValue {
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        } else if tag == Emotion.많이슬픈.rawValue {
//            buttonCount[tag] = buttonCount[tag] + 1
//            print("\(buttonCount[tag])점")
//        } else {
//            print("오류")
//        }
                
        
//        //기존에 쓴 코드
//        buttonCount[sender.tag] += 1
//        print(buttonCount[sender.tag])
        
    }
    
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

