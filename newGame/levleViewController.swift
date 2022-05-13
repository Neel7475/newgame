//
//  levleViewController.swift
//  newGame
//
//  Created by apple on 19/03/22.
//

import UIKit

class levleViewController: UIViewController {

    @IBOutlet weak var easyBUTTON: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtons(buttons: homeButton)
   
        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButton(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    @IBAction func easyButton(_ sender: Any) {
        let easy = self.storyboard?.instantiateViewController(withIdentifier: "gamePageViewController") as! gamePageViewController
        navigationController?.pushViewController(easy, animated: true)
    }
    
    @IBAction func mediumButton(_ sender: Any) {
        let medium = self.storyboard?.instantiateViewController(withIdentifier: "MediumLevelViewController") as! MediumLevelViewController
        navigationController?.pushViewController(medium, animated: true)
    }
    
     @IBAction func hardButton(_ sender: Any) {
         let hard = self.storyboard?.instantiateViewController(withIdentifier: "HardLevelViewController") as! HardLevelViewController
         navigationController?.pushViewController(hard, animated: true)
     }
    func setButtons(buttons:UIButton){
        buttons.layer.cornerRadius = 10
        buttons.layer.masksToBounds = true
        buttons.layer.borderWidth = 0
        buttons.layer.borderColor = UIColor.black.cgColor
        
    }
}


