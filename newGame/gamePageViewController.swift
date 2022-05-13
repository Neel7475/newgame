//
//  gamePageViewController.swift
//  newGame
//
//  Created by apple on 19/03/22.
//

import UIKit

class gamePageViewController: UIViewController {
    
    @IBOutlet weak var progressLable: UILabel!
    @IBOutlet var alertView: UIView!
    @IBOutlet weak var timeproggres: UIProgressView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var correctlable: UILabel!
    @IBOutlet weak var next1: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var inViewScoreLeble: UILabel!
    @IBOutlet weak var akertRestart: UIButton!
    @IBOutlet weak var alertHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hide()
        setTime()
        rendomQusetion()
        setButton(button:homeButton)
        setButton(button:next1)
        alertView.isHidden = true
        //        animationIn(desiredView: alertView)5
        //        createBlur()
    }
    func setButton(button:UIButton){
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
    }
    var score:Int = 0
    
    func hide(){
        correctlable.isHidden = true
        next1.isHidden = true
    }
    
    func unhide(){
        correctlable.isHidden = false
        next1.isHidden = false
    }
    @IBAction func next(_ sender: Any) {
        rendomQusetion()
        hide()
        
    }
    
    @IBAction func homeButton(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func buttonOne(_ sender: Any) {
        unhide()
        if correctAnswer == "1"{
            correctlable.text = "you are Correct"
            correctlable.textColor = .orange
            self.score += 1
            progressLable.text = String(score)
            rendomQusetion()
        }
        else{
            alertView.isHidden = false
            showAlert()
            hide()
        }
        
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        unhide()
        if correctAnswer == "2"{
            correctlable.text = "you are Correct"
            correctlable.textColor = .systemPink
            self.score += 1
            progressLable.text = String(score)
            rendomQusetion()
        }
        else{
            alertView.isHidden = false
            showAlert()
            hide()
        }
    }
    @IBAction func buttonThird(_ sender: Any) {
        unhide()
        if correctAnswer == "3"{
            correctlable.text = "you are Correct"
            correctlable.textColor = .yellow
            self.score += 1
            progressLable.text = String(score)
            rendomQusetion()
        }
        else{
            alertView.isHidden = false
            showAlert()
            hide()
        }
    }
    
    @IBAction func buttonFourth(_ sender: Any) {
        unhide()
        if correctAnswer == "4"{
            correctlable.text = "you are Correct"
            self.score += 1
            progressLable.text = String(score)
            rendomQusetion()
        }
        else{
            alertView.isHidden = false
            showAlert()
            hide()
        }
    }
    
    @IBAction func alertHomeButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func alertRestartButton(_ sender: Any) {
        let hear = self.storyboard?.instantiateViewController(withIdentifier: "gamePageViewController") as! gamePageViewController
        navigationController?.pushViewController(hear, animated: true)
        //        hear.modalPresentationStyle = .fullScreen
        //        present(hear, animated: true, completion: nil)
    }
    var correctAnswer = String()
    func showAlert() {
        alertView.isHidden = false
        //        view.backgroundColor = .systemGray2
        inViewScoreLeble.text = String(score)
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        time.invalidate()
        alertView.layer.cornerRadius = 15
        alertView.layer.masksToBounds = true
        alertView.layer.borderWidth = 2
        alertView.layer.borderColor = UIColor.white.cgColor
    }
    
    func rendomQusetion(){
        
        var rendomNumber = arc4random() % 12
        rendomNumber += 1
        switch(rendomNumber){
        case 1:
            //                lablename.text = "1"
            button1.setImage(UIImage(named: "1"), for: .normal)
            button2.setImage(UIImage(named: "2"), for: .normal)
            button3.setImage(UIImage(named: "3"), for: .normal)
            button4.setImage(UIImage(named: "4"), for: .normal)
            correctAnswer = "2"
            setTime()
            break
            
        case 2:
            //                lablename.text = "2"
            button1.setImage(UIImage(named: "5"), for: .normal)
            button2.setImage(UIImage(named: "6"), for: .normal)
            button3.setImage(UIImage(named: "7"), for: .normal)
            button4.setImage(UIImage(named: "8"), for: .normal)
            correctAnswer = "1"
            setTime()
            break
            
        case 3:
            //                lablename.text = "3"
            button1.setImage(UIImage(named: "9"), for: .normal)
            button2.setImage(UIImage(named: "10"), for: .normal)
            button3.setImage(UIImage(named: "11"), for: .normal)
            button4.setImage(UIImage(named: "12"), for: .normal)
            correctAnswer = "4"
            setTime()
            break
            
        case 4:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "13"), for: .normal)
            button2.setImage(UIImage(named: "14"), for: .normal)
            button3.setImage(UIImage(named: "15"), for: .normal)
            button4.setImage(UIImage(named: "16"), for: .normal)
            correctAnswer = "4"
            setTime()
            
            break
        case 5:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "17"), for: .normal)
            button2.setImage(UIImage(named: "18"), for: .normal)
            button3.setImage(UIImage(named: "19"), for: .normal)
            button4.setImage(UIImage(named: "20"), for: .normal)
            correctAnswer = "1"
            setTime()
            
            break
        case 6:
            //               lablename.text = "4"
            button1.setImage(UIImage(named: "21"), for: .normal)
            button2.setImage(UIImage(named: "22"), for: .normal)
            button3.setImage(UIImage(named: "23"), for: .normal)
            button4.setImage(UIImage(named: "24"), for: .normal)
            correctAnswer = "4"
            setTime()
            
            
            break
        case 7:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "25"), for: .normal)
            button2.setImage(UIImage(named: "26"), for: .normal)
            button3.setImage(UIImage(named: "28"), for: .normal)
            button4.setImage(UIImage(named: "27"), for: .normal)
            correctAnswer = "3"
            setTime()
            
            break
        case 8:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "29"), for: .normal)
            button2.setImage(UIImage(named: "32"), for: .normal)
            button3.setImage(UIImage(named: "31"), for: .normal)
            button4.setImage(UIImage(named: "30"), for: .normal)
            correctAnswer = "2"
            setTime()
            
            break
        case 9:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "33"), for: .normal)
            button2.setImage(UIImage(named: "34"), for: .normal)
            button3.setImage(UIImage(named: "35"), for: .normal)
            button4.setImage(UIImage(named: "36"), for: .normal)
            correctAnswer = "4"
            setTime()
        case 10:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "37"), for: .normal)
            button2.setImage(UIImage(named: "38"), for: .normal)
            button3.setImage(UIImage(named: "39"), for: .normal)
            button4.setImage(UIImage(named: "40"), for: .normal)
            correctAnswer = "1"
            setTime()
        case 11:
            //                lablename.text = "4"
            button1.setImage(UIImage(named: "41"), for: .normal)
            button2.setImage(UIImage(named: "42"), for: .normal)
            button3.setImage(UIImage(named: "43"), for: .normal)
            button4.setImage(UIImage(named: "44"), for: .normal)
            correctAnswer = "4"
            setTime()
            break
        case 12:
            //                lablename.text = "4"
            var arrIndex: [String] = ["45", "46", "47", "48"]
            arrIndex.shuffle()
            button1.setImage(UIImage(named: "\(arrIndex[0])"), for: .normal)
            button2.setImage(UIImage(named: "\(arrIndex[1])"), for: .normal)
            button3.setImage(UIImage(named: "\(arrIndex[2])"), for: .normal)
            button4.setImage(UIImage(named: "\(arrIndex[3])"), for: .normal)
//            button1.setImage(UIImage(named: "45"), for: .normal)
//            button2.setImage(UIImage(named: "46"), for: .normal)
//            button3.setImage(UIImage(named: "47"), for: .normal)
//            button4.setImage(UIImage(named: "48"), for: .normal)
//            correctAnswer = "2"
            setTime()
            
        default:
            break
        }
    }
    var time = Timer()
    var second : Float = 0.0
    var timeinterval : Double = 0.0
    
    private func setTime() {
        second = 7
        time.invalidate()
        timeinterval = Double(Double(second)/Double(100))
        time = Timer.scheduledTimer(timeInterval: timeinterval, target: self, selector: (#selector(upDateTimer)), userInfo: nil, repeats: true)
        //        shoeAlertWrong()
    }
    
    @objc func upDateTimer() {
        if second > 0{
            second = second - Float(timeinterval)
            timeproggres.progress = second/Float(timeinterval*100)
        }
        else
        {
            time.invalidate()
            showAlert()
        }
    }
}

