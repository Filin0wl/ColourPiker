//
//  EditColourViewController.swift
//  ColourPiker
//
//  Created by Anastasia Perminova on 21.07.2022.
//

import UIKit

class EditColourViewController: UIViewController {

    //MARK: - Properties
    weak var delegate: StartViewControllerDelegate?
    var backgroundColour: UIColor!
    
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
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colourFieldView.layer.cornerRadius = 6
        self.navigationItem.setHidesBackButton(true, animated: false)
        let colours = backgroundColour?.cgColor.components
        redSlider.value = Float(colours?[0] ?? 1.00)
        greenSlider.value = Float(colours?[1] ?? 1.00)
        blueSlider.value = Float(colours?[2] ?? 1.00)
        updateFieldColour()
        updateLabels()
        
       
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
        updateFieldColour()
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        delegate?.updateUi(setColor: colourFieldView.backgroundColor ?? .white)
    }
    
    
    //MARK: - Functions
    private func updateFieldColour() {
        colourFieldView.backgroundColor = UIColor(red: CGFloat(roundByDecimal(value: redSlider.value)), green: CGFloat(roundByDecimal(value: greenSlider.value)), blue: CGFloat(roundByDecimal(value: blueSlider.value)), alpha: CGFloat(1.0))
    }
    
    private func roundByDecimal(value: Float) -> Float {
        round(value * 100) / 100.0
    }
    
    private func updateLabels(){
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        redTextField.text = String(format: "%.2f", redSlider.value)
        
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
    }
    

}
