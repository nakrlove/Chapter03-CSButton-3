//
//  CSButton.swift
//  Chapter03-CSButton-3
//
//  Created by nakrlove on 2022/12/12.
//

import UIKit

public enum CSButtonType {
    case rect
    case circle
}

class CSButton: UIButton {

    var style: CSButtonType = .rect {
        didSet {
            switch style {
            case .rect :
                self.backgroundColor = .black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
                self.setTitle("Rect Button", for: .normal)
            case .circle :
                self.backgroundColor = .red
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50
                self.setTitle("Circle Button", for: .normal)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = .green //배경을 녹색으로
        self.layer.borderWidth = 2 //테두리는 조금 두껍게
        self.layer.borderColor = UIColor.black.cgColor //테두리는 검은색으로
        self.setTitle("버튼", for: .normal) //기본 문구 설정
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = .gray //배경을 회색으로
        self.layer.borderWidth = 2 //테두리는 조금 두껍게
        self.layer.borderColor = UIColor.black.cgColor //테두리는 검은색으로
        self.setTitle("코드로 생성된 버튼", for: .normal) //기본 문구 설정
    }
    
    convenience init(type: CSButtonType){
        self.init()
        
        switch type {
        case .rect :
            self.backgroundColor = .black
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 0
            self.setTitle("Rect Button", for: .normal)
        case .circle :
            self.backgroundColor = .red
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 50
            self.setTitle("Circle Button", for: .normal)
        }
    }
}
