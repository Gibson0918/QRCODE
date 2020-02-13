//
//  ViewController.swift
//  QRCODE
//
//  Created by MAD2_P01 on 13/2/20.
//  Copyright © 2020 gibson. All rights reserved.
//

import UIKit
import AVFoundation
import QRCodeReader
import QRCoder

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var TxtFld: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.TxtFld.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) ->Bool{
        TxtFld.resignFirstResponder()
        print(TxtFld.text!)
        let generator = QRCodeGenerator()
        generator.correctionLevel = .H
        let text = TxtFld.text!
        let image:QRImage = generator.createImage( value: text,size: CGSize(width: 200,height: 200))!
        imageView.image = image
        return true
    }
    

    


}

