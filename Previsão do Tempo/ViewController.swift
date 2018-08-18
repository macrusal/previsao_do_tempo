//
//  ViewController.swift
//  Previsão do Tempo
//
//  Created by Marcelo on 18/08/2018.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelData: UILabel!
    @IBOutlet weak var labelInformacoesCidade: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTemperatura: UILabel!
    @IBOutlet weak var labelMinMaxTemperatura: UILabel!
    
    let API_KEY = "9526ed8093dc32fd14a8d0941367665b";
    let fullURL = "http://api.openweathermap.org/data/2.5/forecast?q=London,us&appid=9526ed8093dc32fd14a8d0941367665b";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldEndEditing(_ sender: UITextField) {
    }

    @IBAction func pressedHoje(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func pressedAmanha(_ sender: UIBarButtonItem) {
    }
    
}

