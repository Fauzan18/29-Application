//
//  ViewController.swift
//  Quiz14Sept
//
//  Created by Master on 9/14/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputAge: UITextField!
    @IBOutlet weak var lblHasil: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCount(_ sender: Any) {
        let age : Int? = Int(inputAge.text!)
        let a : Int = age!
        var b : Int? = Int(a)
        if inputAge.text == "" {
            let alertDialog = UIAlertController(title: "Number Required", message: "Can't Be Empty", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
        }
        if b! >= 17 {
            lblHasil.text = "You'r allow to watch film in the Bioskop \(b)"
        } else if b! < 17 {
            lblHasil.text = "You'r not allow to watch film in the bioskop \(b)"
        } else if b! == 0 {
            let alertDialog = UIAlertController(title: "Number Required", message: "Can't Be 0", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

