//
//  QuickPickerView.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

open class QuickPickerView: UITextField {
    
    /// Callback for end editing
    open var valueDidSelected: ((Any) -> Void)?
    
    /// Callback for value change
    open var valueDidChange: ((Any) -> Void)?
    
    open var pickerType: QuickPickerType = .date {
        
        didSet {
            
            switch pickerType {
            case .date:
                datePicker = UIDatePicker()
            case .string(let stringData):
                stringPicker = UIPickerView()
                stringPickerData.append(contentsOf: stringData)
            }
            
            inputAccessoryView = toolbar
        }
    }
    
    // For DatePicker
    open var dateFormatter = DateFormatter()
    
    open var datePicker: UIDatePicker? {
        get {
            return self.inputView as? UIDatePicker
        }
        set {
            inputView = newValue
            dateFormatter.dateFormat = "MM/dd/YYYY"
        }
    }
    
    // For String Picker
    
    var stringPickerData = [String]()
    open var focusType: FocusType = .next
    open var heightForRow: CGFloat = 30
    
    open var pickerRow: UILabel {
        let pickerLabel = UILabel()
        pickerLabel.textColor = .black
        pickerLabel.font = UIFont(name: "HelveticaNeue", size: 20)
        pickerLabel.textAlignment = .center
        pickerLabel.sizeToFit()
        return pickerLabel
    }

    open var stringPicker: UIPickerView? {
        get {
            return self.inputView as? UIPickerView
        }
        set(picker) {
            picker?.delegate = self
            inputView = picker
        }
    }
    

    // Configurations

    open var toolbar: UIToolbar {
        
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .blue
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done,
                                         target: self,
                                         action: #selector(doneAction))
        
        let nextButton = UIBarButtonItem.init(title: "Next", style: .plain, target: self, action: #selector(nextAction))
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                          target: nil,
                                          action: nil)
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel,
                                           target: self,
                                           action: #selector(cancelAction))
        if self.focusType == .next {
            toolBar.setItems([cancelButton, spaceButton, nextButton], animated: false)
        } else {
            toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        }
        toolBar.isUserInteractionEnabled = true
        inputAccessoryView = toolBar
        return toolBar
    }


    @objc func doneAction() {
                
        switch pickerType {
        case .date:
            
            let date = datePicker!.date
            self.text = dateFormatter.string(from: date)
            valueDidSelected?(date)

        case .string:
            let row = stringPicker!.selectedRow(inComponent: 0)
            if self.stringPickerData.count > 0 {
                self.text = stringPickerData[row]
                valueDidSelected?(row)
            }
        }
        
        sendActions(for: .editingDidEnd)
        resignFirstResponder()
    }
    
    @objc func nextAction() {
        switch pickerType {
        case .date:
            
            let date = datePicker!.date
            self.text = dateFormatter.string(from: date)
            valueDidSelected?(date)
        case .string:
            let row = stringPicker!.selectedRow(inComponent: 0)
            if self.stringPickerData.count > 0 {
                self.text = stringPickerData[row]
                valueDidSelected?(row)
            }
        }
        
        sendActions(for: .editingDidEnd)
    }
    
    @objc func cancelAction() {
        resignFirstResponder()
    }
}

//MARK: UIPickerViewDelegate
extension QuickPickerView: UIPickerViewDelegate, UIPickerViewDataSource {
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stringPickerData.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
    open func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = pickerRow
        if self.stringPickerData.count > 0 {
            label.text = stringPickerData[row]
        }
        return label
    }

    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return heightForRow
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        valueDidChange?(row)
        sendActions(for: .valueChanged)
    }
    
}
public enum FocusType: String {
    case next = "Next"
    case done = "Done"
}

public enum QuickPickerType {
    case string(data: [String])
    case date
}

