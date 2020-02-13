//
//  ScannerViewController.swift
//  QRCODE
//
//  Created by MAD2_P01 on 13/2/20.
//  Copyright © 2020 Gibson. All rights reserved.
//

import Foundation
import UIKit
import QRCoder

class ScannerViewController : QRCodeScannerViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func processQRCodeContent(qrCodeContent: String) -> Bool {
        print(qrCodeContent)
        let alertView = UIAlertController(title: "QrCode Title", message: qrCodeContent, preferredStyle: UIAlertController.Style.alert)
        alertView.addAction((UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { _ in})))
        self.present(alertView, animated:true, completion:nil)

        return true
    }
    

}
