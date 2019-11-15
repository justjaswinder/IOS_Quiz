//
//  ResultViewController.swift
//  Quiz
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result = 0
    @IBOutlet weak var retryBtn: UIButton!
    @IBOutlet weak var resText: UILabel!
    
    @IBAction func retryPress(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IOsQuizViewController") as? IOsQuizViewController {
                                     // viewController.keyBoolean = selectedItem
                          //vc.result = resCOUNT
                                     if let navi = navigationController {
                                         navi.pushViewController(vc, animated: true)
                                     }
                                 }
        
    }
    @IBOutlet weak var performText: UILabel!
    
    //    Score 0/5, 1/5 and 2/5 Message => “Please try again!”
//    Score 3/5 Message => “Good job!”
//    Score 4/5 Message => “Excellent work!”
//    Score 5/5 Message => “You are a genius!”
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        resText.text = String(result) + "/5"
        
        if(result < 3){
      //      retryBtn.isHidden = false
        performText.text = "Please try again!"
        }else{
           //       retryBtn.isHidden = true
        }
        if(result == 3){
          
             performText.text = "Good job!"
        }
        if(result == 4){
                   performText.text = "Excellent work!"
              }
        if(result == 5){
                   performText.text = "You are a genius!"
              }
        // Do any additional setup after loading the view.
    }
    
    
    
}
