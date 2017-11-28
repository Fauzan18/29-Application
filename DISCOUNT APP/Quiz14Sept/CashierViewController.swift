//
//  CashierViewController.swift
//  Quiz14Sept
//
//  Created by Master on 9/14/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class CashierViewController: UIViewController {
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var howMany: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var lblHasil: UILabel!
    @IBOutlet weak var blbhasil: UILabel!
    @IBOutlet weak var lbbhasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnCount(_ sender: Any) {
        let discount : Double? = Double(howMany.text!)
        let Price : Double? = Double(price.text!)
        var disk : Double? = discount! / 100
        var diskon : Double? = (Price!) - (Price! * disk!)
        var sdiskon : Double? = (Price!)
        lblHasil.text = "Before Discount \(sdiskon)"
        blbhasil.text = "You get \(discount) %"
        lbbhasil.text = "You Must Pay \(diskon) "
        if howMany.text == "" {
            let alertDialog = UIAlertController(title: "Warning!", message: "Text Field Can't Be Empty", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
        } else if price.text == "" {
            let alertDialog = UIAlertController(title: "Warning!", message: "Text Field Can't Be Empty", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
    }

        func didReceiveMemoryWarning() {
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
}
