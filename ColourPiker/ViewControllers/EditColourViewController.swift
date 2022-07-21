//
//  EditColourViewController.swift
//  ColourPiker
//
//  Created by Anastasia Perminova on 21.07.2022.
//

import UIKit

class EditColourViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var colourFieldView: UIView!
    
    //MARK: Labels
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    //MARK: Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //MARK: Text fields
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colourFieldView.layer.cornerRadius = 6
        
        
       
    }

    //MARK: - Actions
    @IBAction func sliderChanged(_ sender: UISlider) {
        switch sender {
            case redSlider:
                redValueLabel.text = String(format: "%.2f", redSlider.value)
                redTextField.text = String(format: "%.2f", redSlider.value)
            case greenSlider:
                greenValueLabel.text = String(format: "%.2f", greenSlider.value)
                greenTextField.text = String(format: "%.2f", greenSlider.value)
            case blueSlider:
                blueValueLabel.text = String(format: "%.2f", blueSlider.value)
                blueTextField.text = String(format: "%.2f", blueSlider.value)
            default:
                break
        }
    }
    

}
