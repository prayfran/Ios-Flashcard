//
//  ListStudy.swift
//  Cards
//
//  Created by Parker Franks on 6/5/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit

class ListStudy: UIViewController {
    
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
    @IBOutlet weak var Question: UITextField!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Show: UIButton!
    @IBOutlet weak var Check: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var ListType: UITextField!
    @IBOutlet weak var Quit: UIButton!
    
    
    var currentPlace: [String] = []
    var content: [String] = []
    var items = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        // Do any additional setup after loading the view.
    }
    @objc func loadData() {
        back.isHidden = true
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
        Home.backgroundColor = .clear
        Home.layer.cornerRadius = 5
        Home.layer.borderWidth = 1
        Home.layer.borderColor = UIColor.black.cgColor
        Quit.backgroundColor = .clear
        Quit.layer.cornerRadius = 5
        Quit.layer.borderWidth = 1
        Quit.layer.borderColor = UIColor.black.cgColor
        Next.backgroundColor = .clear
        Next.layer.cornerRadius = 5
        Next.layer.borderWidth = 1
        Next.layer.borderColor = UIColor.black.cgColor
        Check.backgroundColor = .clear
        Check.layer.cornerRadius = 5
        Check.layer.borderWidth = 1
        Check.layer.borderColor = UIColor.black.cgColor
        Show.backgroundColor = .clear
        Show.layer.cornerRadius = 5
        Show.layer.borderWidth = 1
        Show.layer.borderColor = UIColor.black.cgColor
        ListType.backgroundColor = .clear
        ListType.layer.cornerRadius = 5
        ListType.layer.borderWidth = 1
        ListType.layer.borderColor = UIColor.black.cgColor
        currentPlace = load(fileName: "transfer")
        content = load(fileName: currentPlace[1].components(separatedBy: ":")[0])

        if content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":").count < 3{
            
            var temp = currentPlace
            currentPlace[1] = temp[1].components(separatedBy: ":")[0]
            currentPlace[1] += ":"
            currentPlace[1] += String(Int(temp[1].components(separatedBy: ":")[1])!)
            content = load(fileName: temp[1].components(separatedBy: ":")[0])
            save(fileName: "transfer", writeString: currentPlace[1])

        }
        items = content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[2].components(separatedBy: ",").count
        update(number: items)
        
        Question.text = content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[1]
        Check.addTarget(self, action: #selector(ListStudy.check(_:)), for: .touchUpInside)
        Show.addTarget(self, action: #selector(ListStudy.show(_:)), for: .touchUpInside)
        Next.addTarget(self, action: #selector(ListStudy.next(_:)), for: .touchUpInside)
        Quit.addTarget(self, action: #selector(ListStudy.quit(_:)), for: .touchUpInside)
        let backgroundImage = UIImage.init(named: "linedpage")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.5
        
        self.view.insertSubview(backgroundImageView, at: 0)
        if content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[0] == "ul"{
            ListType.text = "Unordered"}else{
            ListType.text = "Ordered"
        }
    }
    
    func applicationWillTerminate(_ application: UIApplication){
        save(fileName: "transfer", writeString: "")
    }
    
    @objc func quit(_ sender: AnyObject?) {
        save(fileName: "transfer", writeString: "")
        exit(0)
    }
    
    @objc func next(_ sender: AnyObject?) {
        if (Int(currentPlace[1].components(separatedBy: ":")[1])! + 1) < content.count{
        if content[Int(currentPlace[1].components(separatedBy: ":")[1])! + 1].components(separatedBy: ":")[0] == "ul" || content[Int(currentPlace[1].components(separatedBy: ":")[1])! + 1].components(separatedBy: ":")[0] == "ol"{
            var write = currentPlace[1].components(separatedBy: ":")[0]
            write += ":"
            write += String(Int(currentPlace[1].components(separatedBy: ":")[1])! + 1)
            save(fileName: "transfer", writeString: write)
            loadData()
      
        }else{
        var pass = "f:"
        pass += currentPlace[1]
            
        save(fileName: "transfer", writeString: pass)
        back.sendActions(for: .touchUpInside)
            }
        }else{
            var pass = "f:"
            pass += currentPlace[1]
            save(fileName: "transfer", writeString: pass)
            back.sendActions(for: .touchUpInside)
        }
    }
    
    @objc func check(_ sender: AnyObject?) {
        if content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[0] == "ul"{
            ListType.text = "No need for order :)"
            let answers = content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[2].components(separatedBy: ",")
            var count = 1
            var flag = 0
            repeat{
                if(count == 1){
                    if(!answers.contains(input1.text!)){
                        flag = 1
                    }
                }else if(count == 2){
                    if(!answers.contains(input2.text!)){
                        flag = 1
                    }
                }else if(count == 3){
                    if(!answers.contains(input3.text!)){
                        flag = 1
                    }
                }else if(count == 4){
                    if(!answers.contains(input4.text!)){
                        flag = 1
                    }
                }else if(count == 5){
                    if(!answers.contains(input5.text!)){
                        flag = 1
                    }
                }else if(count == 6){
                    if(!answers.contains(input6.text!)){
                        flag = 1
                    }
                }else if(count == 7){
                    if(!answers.contains(input7.text!)){
                        flag = 1
                    }
                }else if(count == 8){
                    if(!answers.contains(input8.text!)){
                        flag = 1
                    }
                }else if(count == 9){
                    if(!answers.contains(input9.text!)){
                        flag = 1
                    }
                }else if(count == 10){
                    if(!answers.contains(input10.text!)){
                        flag = 1
                    }
                }else if(count == 11){
                    if(!answers.contains(input11.text!)){
                        flag = 1
                    }
                }else if(count == 12){
                    if(!answers.contains(input12.text!)){
                        flag = 1
                    }
                }else if(count == 13){
                    if(!answers.contains(input13.text!)){
                        flag = 1
                    }
                }else if(count == 14){
                    if(!answers.contains(input14.text!)){
                        flag = 1
                    }
                }
                count = count + 1
            }while count < self.items+1
            if (flag == 0){
                input1.text = "You got it :)"
            }else{
                Show.sendActions(for: .touchUpInside)
            }
        }else{
            ListType.text = "I will have order."
            let answers = content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[2].components(separatedBy: ",")
            var count = 1
            var flag = 0
            repeat{
                if(count == 1){
                    if !(answers[0] == input1.text!){
                        flag = 1
                    }
                }else if(count == 2){
                    if !(answers[1] == input2.text!){
                        flag = 1
                    }
                }else if(count == 3){
                    if !(answers[2] == input3.text!){
                        flag = 1
                    }
                }else if(count == 4){
                    if !(answers[3] == input4.text!){
                        flag = 1
                    }
                }else if(count == 5){
                    if !(answers[4] == input5.text!){
                        flag = 1
                    }
                }else if(count == 6){
                    if !(answers[5] == input6.text!){
                        flag = 1
                    }
                }else if(count == 7){
                    if !(answers[6] == input7.text!){
                        flag = 1
                    }
                }else if(count == 8){
                    if !(answers[7] == input8.text!){
                        flag = 1
                    }
                }else if(count == 9){
                    if !(answers[8] == input9.text!){
                        flag = 1
                    }
                }else if(count == 10){
                    if !(answers[9] == input10.text!){
                        flag = 1
                    }
                }else if(count == 11){
                    if !(answers[10] == input11.text!){
                        flag = 1
                    }
                }else if(count == 12){
                    if !(answers[11] == input12.text!){
                        flag = 1
                    }
                }else if(count == 13){
                    if !(answers[12] == input13.text!){
                        flag = 1
                    }
                }else if(count == 14){
                    if !(answers[13] == input14.text!){
                        flag = 1
                    }
                }
                count = count + 1
            }while count < self.items+1
            if (flag == 0){
                input1.text = "Yay you got it :)"
            }else{
                Show.sendActions(for: .touchUpInside)
            }
        }
    }
    
    @objc func show(_ sender: AnyObject?) {
        var answers = content[Int(currentPlace[1].components(separatedBy: ":")[1])!].components(separatedBy: ":")[2].components(separatedBy: ",")
        var count = 1
        repeat{
            if(count == 1){
                input1.text = answers[0];
            }else if(count == 2){
                input2.text = answers[1];
            }else if(count == 3){
                input3.text = answers[2];
            }else if(count == 4){
                input4.text = answers[3];
            }else if(count == 5){
                input5.text = answers[4];
            }else if(count == 6){
                input6.text = answers[5];
            }else if(count == 7){
                input7.text = answers[6];
            }else if(count == 8){
                input8.text = answers[7];
            }else if(count == 9){
                input9.text = answers[8];
            }else if(count == 10){
                input10.text = answers[9];
            }else if(count == 11){
                input11.text = answers[10];
            }else if(count == 12){
                input12.text = answers[11];
            }else if(count == 13){
                input13.text = answers[12];
            }else if(count == 14){
                input14.text = answers[13];
            }
            count = count + 1
        }while count < self.items+1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func update(number: Int) {
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
        }while count < number+1
    }
    
    @objc func load(fileName: String) -> [String]{
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let url = NSURL(fileURLWithPath: path)
        var file = fileName
        file += ".txt"
        if let pathComponent = url.appendingPathComponent(file) {
            let filePath = pathComponent.path
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                let readString = try! String(contentsOf: pathComponent, encoding: String.Encoding.utf8)
                print(readString.components(separatedBy: .newlines))
                return readString.components(separatedBy: .newlines)
            } else {
                print("Failed to read file")
                return []
            }
        } else {
            print("FILE PATH NOT AVAILABLE")
            return []
        }
    }
    
    @objc func save(fileName: String, writeString: String){
        let file = fileName
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create:true)
        let fileURL = DocumentDirURL.appendingPathComponent(file).appendingPathExtension("txt")
        var s = "\n"
        s+=writeString
        try! s.write(to: fileURL, atomically: false, encoding: String.Encoding.utf8)
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
