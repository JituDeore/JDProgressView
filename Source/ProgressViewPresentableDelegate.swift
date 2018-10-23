//
//  ProgressViewPresentableDelegate.swift
//  NewsHunt
//
//  Created by Jitendra Deore on 20/07/18.
//  Copyright © 2018 NewsHunt.com. All rights reserved.
//

import Foundation
import UIKit

@objc public protocol ProgressViewPresentableDelegate: class {
    var progressView: UIActivityIndicatorView { get }
    var parentView: UIView { get }
}

public extension ProgressViewPresentableDelegate where Self : UIViewController{
    /**
     Shows progress.
     */
    func startAnimatingProgressView() {
        if progressView.superview != parentView {
            parentView.addSubview(progressView)
            progressView.translatesAutoresizingMaskIntoConstraints = false;
            parentView.addConstraint(NSLayoutConstraint(item: progressView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0))
            parentView.addConstraint(NSLayoutConstraint(item: progressView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0))
        }
        
        progressView.startAnimating()
    }
    /**
     Hides progress.
     */
    func stopAnimatingProgressView() {
        progressView.stopAnimating()
    }
}
