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
        let baseURL = "http://api.openweathermap.org/data/2.5/forecast?q=";
        let nomeCidade = "Brazil";
        let APIKey = "&appid=9526ed8093dc32fd14a8d0941367665b";
        if let finalURL = URL(string: baseURL + nomeCidade + APIKey) {
            requestDadosPrevisao(url: finalURL);
        } else {
            print("URL mal formada!");
        }
    }
    
    func requestDadosPrevisao(url : URL) {
        let tarefa = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if let urlResponse = response {
                print(urlResponse);
            }
            if let errorResponse = error {
                print(errorResponse);
            } else if let dataResponse = data {
                print(dataResponse);
            }
        }
        tarefa.resume();
    }

    @IBAction func pressedHoje(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func pressedAmanha(_ sender: UIBarButtonItem) {
    }
    
}

