//
//  SendingVC.swift
//  delegatesPractice
//
//  Created by djchai on 10/2/17.
//  Copyright © 2017 djchai. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {

    var delegate: DataSentDelegate? = nil
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    @IBAction func didPressSend(_ sender: Any) {
        if delegate != nil {
            guard let data = dataEntryTextField.text else {return}
            delegate?.userDidEnterData(data: data)
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
