//
//  ViewController.swift
//  Cards
//
//  Created by Parker Franks on 6/1/18.
//  Copyright © 2018 Parker Franks. All rights reserved.
//

import UIKit


extension String {
    func appendLineToURL(fileURL: URL) throws {
        try (self + "\n").appendToURL(fileURL: fileURL)
    }
    
    func appendToURL(fileURL: URL) throws {
        let data = self.data(using: String.Encoding.utf8)!
        try data.append(fileURL: fileURL)
    }
}

extension Data {
    func append(fileURL: URL) throws {
        if let fileHandle = FileHandle(forWritingAtPath: fileURL.path) {
            defer {
                fileHandle.closeFile()
            }
            fileHandle.seekToEndOfFile()
            fileHandle.write(self)
        }
        else {
            try write(to: fileURL, options: .atomic)
        }
    }
}



class ViewController: UIViewController {
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var Module: UITextField!
    @IBOutlet weak var load: UIButton!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var createList: UIButton!
    @IBOutlet weak var Quit: UIButton!
    
    var content:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Module.backgroundColor = .clear
        Module.layer.cornerRadius = 5
        Module.layer.borderWidth = 1
        Module.layer.borderColor = UIColor.black.cgColor
        side1.backgroundColor = .clear
        side1.layer.cornerRadius = 5
        side1.layer.borderWidth = 1
        side1.layer.borderColor = UIColor.black.cgColor
        side2.backgroundColor = .clear
        side2.layer.cornerRadius = 5
        side2.layer.borderWidth = 1
        side2.layer.borderColor = UIColor.black.cgColor
        load.backgroundColor = .clear
        load.layer.cornerRadius = 5
        load.layer.borderWidth = 1
        load.layer.borderColor = UIColor.black.cgColor
        save.backgroundColor = .clear
        save.layer.cornerRadius = 5
        save.layer.borderWidth = 1
        save.layer.borderColor = UIColor.black.cgColor
        Home.backgroundColor = .clear
        Home.layer.cornerRadius = 5
        Home.layer.borderWidth = 1
        Home.layer.borderColor = UIColor.black.cgColor
        createList.backgroundColor = .clear
        createList.layer.cornerRadius = 5
        createList.layer.borderWidth = 1
        createList.layer.borderColor = UIColor.black.cgColor
        Quit.backgroundColor = .clear
        Quit.layer.cornerRadius = 5
        Quit.layer.borderWidth = 1
        Quit.layer.borderColor = UIColor.black.cgColor
        let backgroundImage = UIImage.init(named: "linedpage")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)
        
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.5
            
        self.view.insertSubview(backgroundImageView, at: 0)
        load.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        save.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
                Quit.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }

    @objc func buttonClicked(_ sender: AnyObject?) {
        let view = ViewController()
        if sender === save {
            let fileName: String = Module.text!
            var write: String = side1.text!
            write += ":"
            write += side2.text!
            view.save(fileName:fileName, writeString:write)
            view.save(fileName:"files", writeString:fileName)
            
        } else if sender === Quit{
            let file = "transfer"
            let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create:true)
            let fileURL = DocumentDirURL.appendingPathComponent(file).appendingPathExtension("txt")
            var s = "\n"
            s += ""
            try! s.write(to: fileURL, atomically: false, encoding: String.Encoding.utf8)
            exit(0)
        }
    }
    
    
    @objc func save(fileName: String, writeString: String){
        let file = fileName
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

}

