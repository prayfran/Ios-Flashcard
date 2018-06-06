//
//  LandingPage.swift
//  Cards
//
//  Created by Parker Franks on 6/4/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit

class LandingPage: UIViewController {
    @IBOutlet weak var Study: UIButton!
    @IBOutlet weak var Create: UIButton!
    @IBOutlet weak var FlashLabel: UILabel!
    @IBOutlet weak var Quit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage.init(named: "galaxy-wallpaper-36")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.7
        
        self.view.insertSubview(backgroundImageView, at: 0)
        Study.backgroundColor = .clear
        Study.layer.cornerRadius = 5
        Study.layer.borderWidth = 1
        Study.layer.borderColor = UIColor.black.cgColor
        Study.setTitleColor(.black, for: .normal)
        Create.backgroundColor = .clear
        Create.layer.cornerRadius = 5
        Create.layer.borderWidth = 1
        Create.layer.borderColor = UIColor.black.cgColor
        Create.setTitleColor(.black, for: .normal)
        Quit.backgroundColor = .clear
        Quit.layer.cornerRadius = 5
        Quit.layer.borderWidth = 1
        Quit.layer.borderColor = UIColor.black.cgColor
        Quit.setTitleColor(.black, for: .normal)
        UIView.animate(withDuration: 1.0) {
            self.FlashLabel.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        }
        Quit.addTarget(self, action: #selector(LandingPage.buttonClicked(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
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
    
    @objc func buttonClicked(_ sender: AnyObject?) {
        save(fileName: "transfer", writeString: "")
        exit(0)
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
