//
//  DatePickerView.swift
//  kero_test_swift_1
//
//  Created by Kero on 2/21/17.
//  Copyright © 2017 Kero. All rights reserved.
//

import UIKit


protocol DatePickerViewDelegate {
    
    func didChoose(date :Date, title : String)
    func didCancel()
    
}



class DatePickerView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
    
    @IBOutlet weak var todoNameTextField: UITextField!
    
    
    @IBOutlet var contentView: UIView!
    
    
    var delegate : DatePickerViewDelegate?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DatePickerView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        self.frame = bounds
        addSubview(contentView)
        
        doneBtn.addTarget(self, action: #selector(donePressed(sender:)), for: .touchUpInside)
        
        cancelBtn.addTarget(self, action: #selector(cancelPressed(sender:)), for: .touchUpInside)
        
        
        // custom initialization logic
        //...
    }
    
    func cancelPressed(sender: UIButton){
        self.delegate?.didCancel()
    }
    
    func donePressed(sender: UIButton){
        self.delegate?.didChoose(date: self.datePicker.date, title: self.todoNameTextField.text!)
    }
    
    
//    var caption: String? {
//        get { return label?.text }
//        set { label.text = newValue }
//    }
//    
//    var image: UIImage? {
//        get { return imageView.image }
//        set { imageView.image = newValue }
//    }
    
  
    
    
    
}
