//
//  ViewController.swift
//  newGame
//
//  Created by apple on 19/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Startbutton(_ sender: Any) {
        let levelPage = self.storyboard?.instantiateViewController(withIdentifier: "levleViewController") as! levleViewController
        navigationController?.pushViewController(levelPage, animated: true)
    }
    


}

