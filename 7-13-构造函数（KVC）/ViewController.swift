//
//  ViewController.swift
//  7-13-构造函数（KVC）
//
//  Created by Zeus on 2017/7/13.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let p = Person(dict: ["name": "老张" as AnyObject ,"age": 109 as AnyObject, "titlte": "Boss" as AnyObject])
//        print(p.name ?? "")
//        print(p.age)

        // 如果子类没有重写父类的方法，调用的的时候，会直接调用父类的方法
     let p = Student(dict: ["name": "老张" as AnyObject ,"age": 109 as AnyObject, "titlte": "Boss" as AnyObject,"num": "001" as AnyObject, "XXX": "111" as AnyObject] )
    }

}

