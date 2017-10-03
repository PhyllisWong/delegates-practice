//
//  ReceivingVC.swift
//  delegatesPractice
//
//  Created by djchai on 10/2/17.
//  Copyright © 2017 djchai. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {
    
    @IBOutlet weak var receivingLabel: UILabel!
    
    
    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

