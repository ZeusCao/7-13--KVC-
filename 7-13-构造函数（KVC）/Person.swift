//
//  Person.swift
//  7-13-构造函数（KVC）
//
//  Created by Zeus on 2017/7/13.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit
/**
   1. 定义模型属性的时候，通常都是可选的
     --- 在需要的时候创建
     --- 避免写构造函数，可以简化代码
   2. 使用KVC方法之前应该调用super.init 保证对象实例化完成
   3. 如果是基本数据类型，不能设置成可选的，而且要设置初始值，否则KVC会崩溃
   4. 如果使用KVC设置值，属性不能是private
*/


class Person: NSObject {
  
    // name属性是可选的，在oc中许多属性是在需要的时候创建的
    // 例如vc.view  tableViewCell.textLabel 
    // 因为在手机开发，内存宝贵，有些属性并不是一定分配空间的
    // 延迟加载：在需要的时候在创建
    var name: String?
    
    // 给基本数据类型属性初始化
    var age: Int = 0
    
    // 如果设置为可选，使用KVC会提示无法找到age的key
    //  --- 原因：int是一个基本数据类型的结构体，oc中没有，oc中只有基本数据类型没有可选一说
    //var age: Int?
    
    // 如果是私有属性，使用KVC设置值的时候，同样无法设置
    // 如果设置成private，是禁止外部访问的
    //private var title: String?
     var title: String?
    
    // 重载构造函数，用字典为本类设置初始值
    init(dict :[String : AnyObject]) {
        
        // 保证对象已经初始化完成
        super.init()
        
        // Use of 'self' in method call 'setValuesForKeys' before super.init initializes self
        // 使用self的方法setvalueforKey之前 应该调用super.init
        // KVC的方法，它是oc的方法，实现的时候是在运行时给对象发送消息 ，要求对象已经实例化完成
        setValuesForKeys(dict)
    }
    
    // 重写父类方法
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        // 没有调用super,相当于将父类的代码完全覆盖，不会崩溃
    }
    
    
    
    
    
    
    
}








