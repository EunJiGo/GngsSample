//
//  ViewController.swift
//  GngsSample
//
//  Created by 고은지 on 2022/11/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(praRe(name: "ゴウンジ", age:26))
        onlyPra(number: 2)
        print(onlyRe())

        var optionalInt: Int? = 10
        print("optionalnt value: \(optionalInt)")
        print("value: \(optionalInt!)") // オプショナル 強制解除 강제해제(きょうせいかいじょ)
        
        
        var a: Int! = Int("12")
        print(a)
        

        //　オプショナル·バインディング　1
        var str: String? = "Hello"
        if let string = str {
            print("success \(string)")
        } else {
            print("failed")
        }

        //　オプショナル·バインディング　２
        var age: Int? = 20
        if let myage = age, myage >= 20 {
            print("年は\(myage)です")
        } else {
            print("学生です")
        }

        //　オプショナル·バインディング　３
        let array: [String]? = []
        var isEmptyArray = true

        if let array = array, array.isEmpty {
          isEmptyArray = true
        } else {
          isEmptyArray = false
        }
        print(isEmptyArray)

        
        //　オプショナル·チェイニング　１
        let array1: [String]? = ["s"]
        let isEmptyArray1 = array1?.isEmpty == true
        print(array1?.isEmpty)
        print(isEmptyArray1)

        
        // オプショナル·チェイニング　２
        struct Human {
            var name: String?
            var man: Bool = false
        }
        struct Team {
            var empolyee: Human?
            var name: String?
        }

        var company: Team? =  Team(empolyee: Human(name: "EunJi", man: false), name: "開発")

        print(company?.empolyee)
        print(company?.empolyee?.name)
        print(company?.empolyee?.man)
        company?.empolyee?.name = "GoEunJi"
        print(company?.empolyee?.name)
        
        // enum
        developer(name: "しんちゃん", career: 3, type: .MOBILE)
    }
    
    
    
    func praRe(name: String, age: Int) -> String{
        let result: String = "私の名前は\(name)で、年は\(age)です"
        return result
    }
    
    func onlyPra(number: Int)  {
        for i in 2...9 {
            print("\(number) * \(i) = \(number*i)")
        
        }
    }
    
    func onlyRe() -> String {
        return "成功です"
    }
    
    func developer(name: String, career: Int, type: devType) {
        print("\(name)の開発の経歴は\(career)年で、開発タイプは\(type)です")
    }
    
    enum devType {
        case MOBILE, WEB, SERVER
    }
    
    
}

