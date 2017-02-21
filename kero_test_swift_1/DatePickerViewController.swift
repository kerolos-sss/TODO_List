	//
//  DatePickerViewController.swift
//  kero_test_swift_1
//
//  Created by Kero on 2/21/17.
//  Copyright © 2017 Kero. All rights reserved.
//

import UIKit
    
protocol DatePickerViewControllerDelegate{
    
    func didChoose(date :Date, title : String)
    func didCancel()
}
    
class DatePickerViewController: UIViewController, DatePickerViewDelegate {

    var pickerView: DatePickerView!
    
    var delegate : DatePickerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we'd probably want to set up constraints here in a real app
        
        pickerView = DatePickerView(frame: CGRect (x: 0, y: 20, width: view.bounds.width, height: view.bounds.height))
        //imageView.image = UIImage(named: "codepath_logo")
        //imageView.caption = "CodePath starts new class for designers"
       
        pickerView.delegate = self
        view.addSubview(pickerView)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func didChoose(date :Date, title : String){
        delegate?.didChoose(date: date, title: title)
    }
    func didCancel(){
        delegate?.didCancel()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
