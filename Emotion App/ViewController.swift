//
//  ViewController.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    //버튼마다 초기 값 필요. a버튼에 0 b버튼에 0 ...
    var buttonCount: [Int] = [0, 0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //버튼을 누르면, 클릭 수가 증가
    @IBAction func emotionButton(_ sender: UIButton) {
                
        buttonCount[sender.tag] = buttonCount[sender.tag] + 1
        
        print(buttonCount[sender.tag])
        
    }
    
}

