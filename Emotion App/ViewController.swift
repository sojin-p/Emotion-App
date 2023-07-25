//
//  ViewController.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //버튼을 누르면, 클릭 수가 증가
    @IBAction func emotionButton(_ sender: UIButton) {
        
        count = count + 1
        print(count)
        
    }
    
}

