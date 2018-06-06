//
//  ListCard.swift
//  Cards
//
//  Created by Parker Franks on 6/4/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit


class ListCard: UIViewController {
    @IBOutlet weak var line: UILabel!
    
    var sidecount = 0
    var cardcount = 1
/*    @IBOutlet weak var Module: UITextField!
    @IBOutlet weak var inOrder: UITextField!
    @IBOutlet weak var numberOptions: UITextField!
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input3: UITextField!
    @IBOutlet weak var input4: UITextField!
    @IBOutlet weak var input5: UITextField!
    @IBOutlet weak var input6: UITextField!
    @IBOutlet weak var input7: UITextField!
    @IBOutlet weak var input8: UITextField!
    @IBOutlet weak var input9: UITextField!
    @IBOutlet weak var input10: UITextField!
    @IBOutlet weak var input11: UITextField!
    @IBOutlet weak var input12: UITextField!
    @IBOutlet weak var input13: UITextField!
    @IBOutlet weak var input14: UITextField!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var study: UIButton!
    @IBOutlet weak var update: UIButton!
*/
    override func viewDidLoad() {
        super.viewDidLoad()
        line.layer.borderColor = UIColor.black.cgColor

/*        study.backgroundColor = .clear
        study.layer.cornerRadius = 5
        study.layer.borderWidth = 1
        study.layer.borderColor = UIColor.black.cgColor
        save.backgroundColor = .clear
        save.layer.cornerRadius = 5
        save.layer.borderWidth = 1
        save.layer.borderColor = UIColor.black.cgColor
        update.backgroundColor = .clear
        update.layer.cornerRadius = 5
        update.layer.borderWidth = 1
        update.layer.borderColor = UIColor.black.cgColor
        input1.isHidden = true;
        input2.isHidden = true;
        input3.isHidden = true;
        input4.isHidden = true;
        input5.isHidden = true;
        input6.isHidden = true;
        input7.isHidden = true;
        input8.isHidden = true;
        input9.isHidden = true;
        input10.isHidden = true;
        input11.isHidden = true;
        input12.isHidden = true;
        input13.isHidden = true;
        input14.isHidden = true;
        */
        let backgroundImage = UIImage.init(named: "linedpage")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.1
        self.view.insertSubview(backgroundImageView, at: 0)
        /*
        update.addTarget(self, action: #selector(ListCard.updatebuttonClicked(_:)), for: .touchUpInside)
        */
        // Do any additional setup after loading the view.
    }
    
    @objc func updatebuttonClicked(_ sender: AnyObject?) {
/*        if sender === update {
            if(numberOptions.text == ""){
                print("nope")
            }
            else{
                let num = Int(numberOptions.text!)
                var i = 1
                repeat{
                    if i == 1{
                        input1.isHidden = false;
                    }else if i == 2{
                        input2.isHidden = false;
                    }else if i == 3{
                        input3.isHidden = false;
                    }else if i == 4{
                        input4.isHidden = false;
                    }else if i == 5{
                        input5.isHidden = false;
                    }else if i == 6{
                        input6.isHidden = false;
                    }else if i == 7{
                        input7.isHidden = false;
                    }else if i == 8{
                        input8.isHidden = false;
                    }else if i == 9{
                        input9.isHidden = false;
                    }else if i == 10{
                        input10.isHidden = false;
                    }else if i == 11{
                        input11.isHidden = false;
                    }else if i == 12{
                        input12.isHidden = false;
                    }else if i == 13{
                        input13.isHidden = false;
                    }else if i == 14{
                        input14.isHidden = false;
                    }
                    i+=1
                }while i <= num!
            }
        }*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
