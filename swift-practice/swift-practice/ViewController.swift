//
//  ViewController.swift
//  swift-practice
//
//  Created by 이정우 on 2021/04/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Click_MoveBtn(_ sender: Any) {
        //storyboard find controller : DetailController
        //변수
        //nil 값이 있을수도 있고 없을수도 있음
        //옵셔널 바인딩
        if let controller = self.storyboard?.instantiateViewController(identifier: "DetailController"){
            //push controller = navigation
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
        
        
        
        
        //move controller
        
    }
    
}

