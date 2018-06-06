//
//  ListCreate.swift
//  Cards
//
//  Created by Parker Franks on 6/5/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit

class ListCreate: UIViewController {
    @IBOutlet weak var Quit: UIButton!
    @IBOutlet weak var Study: UIButton!
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Update: UIButton!
    @IBOutlet weak var line: UILabel!
    @IBOutlet weak var Save: UIButton!
    @IBOutlet weak var Number: UITextField!
    @IBOutlet weak var Order: UITextField!
    @IBOutlet weak var Module: UITextField!
    @IBOutlet weak var Question: UITextField!
    
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
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage.init(named: "linedpage")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.5
        
        self.view.insertSubview(backgroundImageView, at: 0)
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
        input1.backgroundColor = .clear
        input1.layer.cornerRadius = 5
        input1.layer.borderWidth = 1
        input1.layer.borderColor = UIColor.black.cgColor
        input2.backgroundColor = .clear
        input2.layer.cornerRadius = 5
        input2.layer.borderWidth = 1
        input2.layer.borderColor = UIColor.black.cgColor
        input3.backgroundColor = .clear
        input3.layer.cornerRadius = 5
        input3.layer.borderWidth = 1
        input3.layer.borderColor = UIColor.black.cgColor
        input4.backgroundColor = .clear
        input4.layer.cornerRadius = 5
        input4.layer.borderWidth = 1
        input4.layer.borderColor = UIColor.black.cgColor
        input5.backgroundColor = .clear
        input5.layer.cornerRadius = 5
        input5.layer.borderWidth = 1
        input5.layer.borderColor = UIColor.black.cgColor
        input6.backgroundColor = .clear
        input6.layer.cornerRadius = 5
        input6.layer.borderWidth = 1
        input6.layer.borderColor = UIColor.black.cgColor
        input7.backgroundColor = .clear
        input7.layer.cornerRadius = 5
        input7.layer.borderWidth = 1
        input7.layer.borderColor = UIColor.black.cgColor
        input8.backgroundColor = .clear
        input8.layer.cornerRadius = 5
        input8.layer.borderWidth = 1
        input8.layer.borderColor = UIColor.black.cgColor
        input9.backgroundColor = .clear
        input9.layer.cornerRadius = 5
        input9.layer.borderWidth = 1
        input9.layer.borderColor = UIColor.black.cgColor
        input10.backgroundColor = .clear
        input10.layer.cornerRadius = 5
        input10.layer.borderWidth = 1
        input10.layer.borderColor = UIColor.black.cgColor
        input11.backgroundColor = .clear
        input11.layer.cornerRadius = 5
        input11.layer.borderWidth = 1
        input11.layer.borderColor = UIColor.black.cgColor
        input12.backgroundColor = .clear
        input12.layer.cornerRadius = 5
        input12.layer.borderWidth = 1
        input12.layer.borderColor = UIColor.black.cgColor
        input13.backgroundColor = .clear
        input13.layer.cornerRadius = 5
        input13.layer.borderWidth = 1
        input13.layer.borderColor = UIColor.black.cgColor
        input14.backgroundColor = .clear
        input14.layer.cornerRadius = 5
        input14.layer.borderWidth = 1
        input14.layer.borderColor = UIColor.black.cgColor
        Question.backgroundColor = .clear
        Question.layer.cornerRadius = 5
        Question.layer.borderWidth = 1
        Question.layer.borderColor = UIColor.black.cgColor
        Order.backgroundColor = .clear
        Order.layer.cornerRadius = 5
        Order.layer.borderWidth = 1
        Order.layer.borderColor = UIColor.black.cgColor
        Number.backgroundColor = .clear
        Number.layer.cornerRadius = 5
        Number.layer.borderWidth = 1
        Number.layer.borderColor = UIColor.black.cgColor
        Module.backgroundColor = .clear
        Module.layer.cornerRadius = 5
        Module.layer.borderWidth = 1
        Module.layer.borderColor = UIColor.black.cgColor
        Update.backgroundColor = .clear
        Update.layer.cornerRadius = 5
        Update.layer.borderWidth = 1
        Update.layer.borderColor = UIColor.black.cgColor
        Save.backgroundColor = .clear
        Save.layer.cornerRadius = 5
        Save.layer.borderWidth = 1
        Save.layer.borderColor = UIColor.black.cgColor
        Home.backgroundColor = .clear
        Home.layer.cornerRadius = 5
        Home.layer.borderWidth = 1
        Home.layer.borderColor = UIColor.black.cgColor
        Quit.backgroundColor = .clear
        Quit.layer.cornerRadius = 5
        Quit.layer.borderWidth = 1
        Quit.layer.borderColor = UIColor.black.cgColor
        Study.backgroundColor = .clear
        Study.layer.cornerRadius = 5
        Study.layer.borderWidth = 1
        Study.layer.borderColor = UIColor.black.cgColor
        line.backgroundColor = .clear
        line.layer.cornerRadius = 5
        line.layer.borderWidth = 1
        line.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
        Update.addTarget(self, action: #selector(ListCreate.update(_:)), for: .touchUpInside)
        Save.addTarget(self, action: #selector(ListCreate.createWrite(_:)), for: .touchUpInside)
        Quit.addTarget(self, action: #selector(ListCreate.quit(_:)), for: .touchUpInside)
    }
    
    @objc func quit(_ sender: AnyObject?) {
        let file = "transfer"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create:true)
        let fileURL = DocumentDirURL.appendingPathComponent(file).appendingPathExtension("txt")
        var s = "\n"
        s += ""
        try! s.write(to: fileURL, atomically: false, encoding: String.Encoding.utf8)
        exit(0)
    }

    @objc func update(_ sender: AnyObject?) {
        let number:Int? = Int(Number.text!)
        var count = 1
        repeat{
            if(count == 1){
                input1.isHidden = false;
            }else if(count == 2){
                input2.isHidden = false;
            }else if(count == 3){
                input3.isHidden = false;
            }else if(count == 4){
                input4.isHidden = false;
            }else if(count == 5){
                input5.isHidden = false;
            }else if(count == 6){
                input6.isHidden = false;
            }else if(count == 7){
                input7.isHidden = false;
            }else if(count == 8){
                input8.isHidden = false;
            }else if(count == 9){
                input9.isHidden = false;
            }else if(count == 10){
                input10.isHidden = false;
            }else if(count == 11){
                input11.isHidden = false;
            }else if(count == 12){
                input12.isHidden = false;
            }else if(count == 13){
                input13.isHidden = false;
            }else if(count == 14){
                input14.isHidden = false;
            }
            count = count + 1
        }while count < number!+1
    }
    
    @objc func createWrite(_ sender: AnyObject?){
        var write = ""
        if Order.text! == "Yes"{
            print("WTF")
        }
        if Order.text! == "Yes"{
            write = "ol:"
            write += Question.text!
            write += ":"
            let number:Int? = Int(Number.text!)
            var count = 1
            repeat{
                if(count == 1){
                    write += input1.text!
                    write += ","
                }else if(count == 2){
                    write += input2.text!
                    write += ","
                }else if(count == 3){
                    write += input3.text!
                    write += ","
                }else if(count == 4){
                    write += input4.text!
                    write += ","
                }else if(count == 5){
                    write += input5.text!
                    write += ","
                }else if(count == 6){
                    write += input6.text!
                    write += ","
                }else if(count == 7){
                    write += input7.text!
                    write += ","
                }else if(count == 8){
                    write += input8.text!
                    write += ","
                }else if(count == 9){
                    write += input9.text!
                    write += ","
                }else if(count == 10){
                    write += input10.text!
                    write += ","
                }else if(count == 11){
                    write += input11.text!
                    write += ","
                }else if(count == 12){
                    write += input12.text!
                    write += ","
                }else if(count == 13){
                    write += input13.text!
                    write += ","
                }else if(count == 14){
                    write += input14.text!
                    write += ","
                }
                count = count + 1
            }while count < number!+1
            write.removeLast()
        }else{
            write = "ul:"
            write += Question.text!
            write += ":"
            let number:Int? = Int(Number.text!)
            var count = 1
            repeat{
                if(count == 1){
                    write += input1.text!
                    write += ","
                }else if(count == 2){
                    write += input2.text!
                    write += ","
                }else if(count == 3){
                    write += input3.text!
                    write += ","
                }else if(count == 4){
                    write += input4.text!
                    write += ","
                }else if(count == 5){
                    write += input5.text!
                    write += ","
                }else if(count == 6){
                    write += input6.text!
                    write += ","
                }else if(count == 7){
                    write += input7.text!
                    write += ","
                }else if(count == 8){
                    write += input8.text!
                    write += ","
                }else if(count == 9){
                    write += input9.text!
                    write += ","
                }else if(count == 10){
                    write += input10.text!
                    write += ","
                }else if(count == 11){
                    write += input11.text!
                    write += ","
                }else if(count == 12){
                    write += input12.text!
                    write += ","
                }else if(count == 13){
                    write += input13.text!
                    write += ","
                }else if(count == 14){
                    write += input14.text!
                    write += ","
                }
                count = count + 1
            }while count < number!+1
            write.removeLast()
        }
        
        save(writeString: write)
    }
    
    @objc func save(writeString: String){
        print(writeString)
        let file = Module.text!
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create:true)
        let fileURL = DocumentDirURL.appendingPathComponent(file).appendingPathExtension("txt")
        print(fileURL)
        var s = "\n"
        s+=writeString
        let write: Data? = s.data(using: .utf8)
        if let fileHandle = FileHandle(forWritingAtPath: fileURL.path) {
            fileHandle.seekToEndOfFile()
            fileHandle.write(write!)
        } else {
            try! s.write(to: fileURL, atomically: false, encoding: String.Encoding.utf8)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
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
