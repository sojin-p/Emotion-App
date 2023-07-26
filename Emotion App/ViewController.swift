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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionButton()
        
        reloadCount()
//        UserDefaults.standard.removeObject(forKey: "완전행복")
//        UserDefaults.standard.removeObject(forKey: "적당미소")
//        UserDefaults.standard.removeObject(forKey: "그냥그냥")
//        UserDefaults.standard.removeObject(forKey: "좀속상한")
//        UserDefaults.standard.removeObject(forKey: "많이슬픈")
    }
    
    //버튼을 누르면, 클릭 수가 증가 후 저장
    @IBAction func emotionButton(_ sender: UIButton) {
        let tag = sender.tag
        count[tag] += 1
        
        saveValue(EmotionRawValue: tag, keyValue: count[tag])
    }
    
    //저장
    func saveValue(EmotionRawValue: Int, keyValue: Int) {
        //1. 버튼을 누르면 저장
        guard let emotion = Emotions(rawValue: EmotionRawValue) else {
            print("버튼의 태그 값에 nil 들어갈 수 있다.")
            return
        }

        switch emotion {
        case .완전행복, .적당미소, .그냥그냥, .좀속상한, .많이슬픈:
            UserDefaults.standard.set(keyValue, forKey: "\(emotion)")
            print("\(emotion)지수는 \(UserDefaults.standard.integer(forKey: "\(emotion)"))점")
        }
        
//        //5. if 버전
//        if let emotion = Emotions(rawValue: tag) {
//            UserDefaults.standard.set(count[tag], forKey: "\(emotion)")
//            //print("\(emotion)지수는 \(UserDefaults.standard.integer(forKey: "\(emotion)"))점")
//        } else {
//            print("버튼 태그 확인")
//        }
    }
    
    //불러오기
    func reloadCount() {
        //4. enum.allcases 이용
        for emotion in emotionList {
            let sevedCount = UserDefaults.standard.integer(forKey: "\(emotion)") //불러 오기
            count[emotion.rawValue] = sevedCount //불러온 값을 카운트 배열에 넣기
//            print("\(count[emotion.rawValue])점")
        }
        
//        //2. 앱을 키면 저장한걸 불러온다. - 뷰디드로드에 쓰려고 보니 길어서 함수로
//        let happyCount = UserDefaults.standard.integer(forKey: "\(Emotion.완전행복)")
//        let smileCount = UserDefaults.standard.integer(forKey: "\(Emotion.적당미소)")
//        let sosoCount = UserDefaults.standard.integer(forKey: "\(Emotion.그냥그냥)")
//        let upsetCount = UserDefaults.standard.integer(forKey: "\(Emotion.좀속상한)")
//        let sadCount = UserDefaults.standard.integer(forKey: "\(Emotion.많이슬픈)")
//
//        //3. 불러온 카운트를 초기 카운트에 다시 넣기
//        count[Emotion.완전행복.rawValue] = happyCount
//        count[Emotion.적당미소.rawValue] = smileCount
//        count[Emotion.그냥그냥.rawValue] = sosoCount
//        count[Emotion.좀속상한.rawValue] = upsetCount
//        count[Emotion.많이슬픈.rawValue] = sadCount
        
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

