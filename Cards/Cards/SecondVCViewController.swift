//
//  SecondVCViewController.swift
//  Cards
//
//  Created by Parker Franks on 6/2/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit



class SecondVCViewController: UIViewController {

    @IBOutlet weak var Quit: UIButton!
    @IBOutlet weak var Module: UITextField!
    @IBOutlet weak var CurrentSide: UITextField!
    @IBOutlet weak var Flip: UIButton!
    @IBOutlet weak var Load: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Check: UIButton!
    @IBOutlet weak var Answer: UITextField!
    @IBOutlet weak var ModuleLabel: UILabel!
    @IBOutlet weak var YourAnswerLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var SavedAnswerLabel: UILabel!
    @IBOutlet weak var SavedAnswer: UITextField!
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var ViewList: UIButton!
    var currentPlace: [String] = []
    var content: [String] = []
    var sidecount = 0
    var cardcount = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let url = NSURL(fileURLWithPath: path)
        if let pathComponent = url.appendingPathComponent("transfer.txt") {
            let filePath = pathComponent.path
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                currentPlace = load(fileName: "transfer")
            } else {
                currentPlace = ["","n:n:n"]
            }
        } else {
            print("FILE PATH NOT AVAILABLE")
        }
        
        if (currentPlace[1].components(separatedBy: ":")[0] == "f") {
            print(currentPlace)
            print(cardcount)
           
           content = load(fileName: currentPlace[1].components(separatedBy: ":")[1])
             print(content[cardcount].components(separatedBy: ":"))
           cardcount = Int(currentPlace[1].components(separatedBy: ":")[2])! + 1
            if cardcount > content.count-1{
                cardcount = 1
            }
            print(cardcount)
            let side = content[cardcount].components(separatedBy: ":")[0]
            if side == "ul" || side == "ol"{
                ViewList.sendActions(for: .touchUpInside)
            }
            self.CurrentSide.text = side
            Module.text = currentPlace[1].components(separatedBy: ":")[1]
            ModuleLabel.isHidden = true;
            Module.isHidden = true;
            CurrentSide.isHidden = false;
            Answer.isHidden = false;
            YourAnswerLabel.isHidden = false;
            QuestionLabel.isHidden = false;
            SavedAnswerLabel.isHidden = false;
            SavedAnswer.isHidden = false;
            Flip.isHidden = false;
            Check.isHidden = false;
            Next.isHidden = false;
            cardcount = cardcount - 1
            Next.sendActions(for: .touchUpInside)
        }else{
            CurrentSide.isHidden = true;
            Answer.isHidden = true;
            YourAnswerLabel.isHidden = true;
            QuestionLabel.isHidden = true;
            SavedAnswerLabel.isHidden = true;
            SavedAnswer.isHidden = true;
            Flip.isHidden = true;
            Next.isHidden = true;
            Check.isHidden = true;
        }
        
        ViewList.isHidden = true
        Quit.backgroundColor = .clear
        Quit.layer.cornerRadius = 5
        Quit.layer.borderWidth = 1
        Quit.layer.borderColor = UIColor.black.cgColor
        Home.backgroundColor = .clear
        Home.layer.cornerRadius = 5
        Home.layer.borderWidth = 1
        Home.layer.borderColor = UIColor.black.cgColor
        Check.backgroundColor = .clear
        Check.layer.cornerRadius = 5
        Check.layer.borderWidth = 1
        Check.layer.borderColor = UIColor.black.cgColor
        Next.backgroundColor = .clear
        Next.layer.cornerRadius = 5
        Next.layer.borderWidth = 1
        Next.layer.borderColor = UIColor.black.cgColor
        Load.backgroundColor = .clear
        Load.layer.cornerRadius = 5
        Load.layer.borderWidth = 1
        Load.layer.borderColor = UIColor.black.cgColor
        Flip.backgroundColor = .clear
        Flip.layer.cornerRadius = 5
        Flip.layer.borderWidth = 1
        Flip.layer.borderColor = UIColor.black.cgColor
        Module.backgroundColor = .clear
        Module.layer.cornerRadius = 5
        Module.layer.borderWidth = 1
        Module.layer.borderColor = UIColor.black.cgColor
        CurrentSide.backgroundColor = .clear
        CurrentSide.layer.cornerRadius = 5
        CurrentSide.layer.borderWidth = 1
        CurrentSide.layer.borderColor = UIColor.black.cgColor
        SavedAnswer.backgroundColor = .clear
        SavedAnswer.layer.cornerRadius = 5
        SavedAnswer.layer.borderWidth = 1
        SavedAnswer.layer.borderColor = UIColor.black.cgColor
        Answer.backgroundColor = .clear
        Answer.layer.cornerRadius = 5
        Answer.layer.borderWidth = 1
        Answer.layer.borderColor = UIColor.black.cgColor
        Flip.backgroundColor = .clear
        Flip.layer.cornerRadius = 5
        Flip.layer.borderWidth = 1
        Flip.layer.borderColor = UIColor.black.cgColor
        Next.backgroundColor = .clear
        Next.layer.cornerRadius = 5
        Next.layer.borderWidth = 1
        Next.layer.borderColor = UIColor.black.cgColor
        Load.backgroundColor = .clear
        Load.layer.cornerRadius = 5
        Load.layer.borderWidth = 1
        Load.layer.borderColor = UIColor.black.cgColor
        Check.backgroundColor = .clear
        Check.layer.cornerRadius = 5
        Check.layer.borderWidth = 1
        Check.layer.borderColor = UIColor.black.cgColor
        Home.backgroundColor = .clear
        Home.layer.cornerRadius = 5
        Home.layer.borderWidth = 1
        Home.layer.borderColor = UIColor.black.cgColor
        let backgroundImage = UIImage.init(named: "linedpage")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.5
        
        self.view.insertSubview(backgroundImageView, at: 0)
        Load.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        Flip.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        Next.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        Check.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        Quit.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    func applicationWillTerminate(_ application: UIApplication){
        save(fileName: "transfer", writeString: "")
    }
    
    
    func isAppAlreadyLaunchedOnce()->Bool{
        let defaults = UserDefaults.standard
        if let _ = defaults.string(forKey: "isAppAlreadyLaunchedOnce"){
            print("App already launched")
            return true
        }else{
            defaults.set(true, forKey: "isAppAlreadyLaunchedOnce")
            print("App launched first time")
            return false
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonClicked(_ sender: AnyObject?) {
        let view = SecondVCViewController()
        if sender === Load {
            let fileName: String = Module.text!
            content = view.load(fileName:fileName)
            let side = content[1].components(separatedBy: ":")[0]
            self.CurrentSide.text = side
            ModuleLabel.isHidden = true;
            Module.isHidden = true;
            CurrentSide.isHidden = false;
            Answer.isHidden = false;
            YourAnswerLabel.isHidden = false;
            QuestionLabel.isHidden = false;
            SavedAnswerLabel.isHidden = false;
            SavedAnswer.isHidden = false;
            Flip.isHidden = false;
            Check.isHidden = false;
            Next.isHidden = false;
        }else if sender === Flip{
            if sidecount == 0{
                let side = content[cardcount].components(separatedBy: ":")[1]
                self.SavedAnswer.text = side
                sidecount = 1
            }
            else{
                let side = content[cardcount].components(separatedBy: ":")[0]
                self.CurrentSide.text = side
                sidecount = 0
            }
        }else if sender === Next{
            SavedAnswer.text = ""
            Answer.text = ""
            print(content[cardcount].components(separatedBy: ":").count)
            if(content[cardcount].components(separatedBy: ":").count > 1){
                cardcount = cardcount + 1
                var pass = Module.text!
                pass += ":"
                pass += String(cardcount)
                save(fileName: "transfer", writeString: pass)
                ViewList.sendActions(for: .touchUpInside)
            }
            if cardcount < content.count-1{
                cardcount = cardcount + 1
                let side = content[cardcount].components(separatedBy: ":")[0]
                sidecount = 0
                self.CurrentSide.text = side
            }else{
                cardcount = 1
                let side = content[cardcount].components(separatedBy: ":")[0]
                sidecount = 0
                self.CurrentSide.text = side
            }
        }else if sender === Check{
            if self.Answer.text == content[cardcount].components(separatedBy: ":")[1]{
                self.SavedAnswer.text = "Yay you got it :)!"
            }else{
                self.SavedAnswer.text = content[cardcount].components(separatedBy: ":")[1]
            }
        }else if sender === Quit{
            save(fileName: "transfer", writeString: "")
            exit(0)
        }
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
        print(fileURL)
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
