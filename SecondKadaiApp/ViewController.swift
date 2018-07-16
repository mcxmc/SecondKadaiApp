//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 佐藤 節夏 on 2018/07/15.
//  Copyright © 2018年 mcxmc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var formName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているxに値を代入して渡す
        if let name = formName.text {
            resultViewController.x = name
        }
    
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }

}

