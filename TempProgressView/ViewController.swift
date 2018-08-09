//
//  ViewController.swift
//  TempProgressView
//
//  Created by Jitendra Deore on 20/07/18.
//  Copyright © 2018 Jitendra Deore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnShowTitle: UIButton!
    @IBAction func showHideProgress(_ sender: Any) {
        btnShowTitle.isSelected = !btnShowTitle.isSelected
        if btnShowTitle.isSelected{
             showProgress()
        }else{
           hideProgress()
        }
    }
    
    lazy var activity: UIActivityIndicatorView = {
        return UIActivityIndicatorView(activityIndicatorStyle: .gray)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnShowTitle.setTitle("Show Progress", for:.normal)
        btnShowTitle.setTitle("Hide Progress", for: .selected)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: ProgressViewPresentableDelegate{
    var progressView: UIActivityIndicatorView {
        return activity
    }
    var parantView: UIView{
        return self.view
    }
}
