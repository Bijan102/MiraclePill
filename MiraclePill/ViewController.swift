//
//  ViewController.swift
//  MiraclePill
//
//  Created by Bijan Fazeli on 8/20/16.
//  Copyright © 2016 Fazeli, Bijan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var nameTxt: UITextField!
 
    @IBOutlet weak var streetLbl: UILabel!
    
    @IBOutlet weak var streetTxt: UITextField!
    
    @IBOutlet weak var cityTxt: UITextField!
    
    @IBOutlet weak var stateLbl: UILabel!
    
    
    @IBOutlet weak var cityLbl: UILabel!
    
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxt: UITextField!
    
    @IBOutlet weak var btnOutlet: UIButton!
    
    @IBOutlet weak var success: UIImageView!
    
    
    let states = ["Alaska", "Alabama", "California", "Maine", "New York"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self;
        statePicker.delegate = self;
        self.view.backgroundColor = UIColor.gray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false;
        //Hide countryLbl, countryTxtField, zipCodeLbl, and zipCodeTxt when statePicker is selected
        countryLbl.isHidden = true;
        countryTxt.isHidden = true;
        zipCodeLbl.isHidden = true;
        zipCodeTxt.isHidden = true;
        btnOutlet.isHidden = true;
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState()); //UIControlState.normal
        statePicker.isHidden = true;
        
        //Display countryLbl, countryTxtField, zipCodeLbl, and zipCodeTxt when statePicker is selected
        countryLbl.isHidden = false;
        countryTxt.isHidden = false;
        zipCodeLbl.isHidden = false;
        zipCodeTxt.isHidden = false;
        btnOutlet.isHidden = false;
    }
    
    @IBAction func btnSubmit(_ sender: AnyObject) {
        //Hide countryLbl, countryTxtField, zipCodeLbl, and zipCodeTxt when statePicker is selected
        countryLbl.isHidden = true;
        countryTxt.isHidden = true;
        zipCodeLbl.isHidden = true;
        zipCodeTxt.isHidden = true;
        btnOutlet.isHidden = true;
        statePicker.isHidden = true;
        statePickerBtn.isHidden = true;
        success.isHidden = false;
        nameLbl.isHidden = true;
        nameTxt.isHidden = true;
        streetLbl.isHidden = true;
        streetTxt.isHidden = true;
        cityLbl.isHidden = true;
        cityTxt.isHidden = true;
        stateLbl.isHidden = true;
        
    }
    
}

