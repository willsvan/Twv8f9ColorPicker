//
//  ViewController.swift
//  Twv8f9ColorPicker
//
//  Created by Wills Van Doorn on 5/5/18.
//  Copyright © 2018 Wills Van Doorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    let colors: [String] = ["red", "orange", "yellow", "blue"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        switch colors[row] {
        case "red":
            view.backgroundColor = UIColor.red
        case "orange":
            view.backgroundColor = UIColor.orange
        case "yellow":
            view.backgroundColor = UIColor.yellow
        case "pink":
            view.backgroundColor = UIColor.blue
        default:
            view.backgroundColor = UIColor.red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Red"
        view.backgroundColor = UIColor.red

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

