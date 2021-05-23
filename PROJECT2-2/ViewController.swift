//
//  ViewController.swift
//  PROJECT2-2
//
//  Created by Анна Басюк on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var rSlider: UISlider! {
        didSet{
            rSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet weak var gSlider: UISlider!{
        didSet{
            gSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet weak var bSlider: UISlider!{
        didSet{
            bSlider.tintColor = UIColor.blue
        }
    }
    
    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var gLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeColor() {
    
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    
    }

    @IBAction func rgbSliderChanged(_ sender: Any) {
        
        rLabel.text = String(format: "%.2f", rSlider.value)
        gLabel.text = String(format: "%.2f", gSlider.value)
        bLabel.text = String(format: "%.2f", bSlider.value)
    }
    
    @IBAction func viewChanged(_ sender: Any) {
        changeColor()
    }
}
