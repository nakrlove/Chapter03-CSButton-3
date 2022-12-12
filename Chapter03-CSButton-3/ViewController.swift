//
//  ViewController.swift
//  Chapter03-CSButton-3
//
//  Created by nakrlove on 2022/12/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
        // Do any additional setup after loading the view.
    }

    func initView(){
        let btn1 = CSButton(type: CSButtonType.rect )
        btn1.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(btn1)
        
        let btn2 = CSButton(type: CSButtonType.circle )
        btn2.frame = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(btn2)
        
        btn2.style = .rect
    }

}

