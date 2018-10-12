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
    var parantView: UIView { get }
}

public extension ProgressViewPresentableDelegate where Self : UIViewController{
    /**
     Shows progress.
     */
    func startAnimatingProgressView() {
        parantView.addSubview(progressView)
        progressView.translatesAutoresizingMaskIntoConstraints = false;
        parantView.addConstraint(NSLayoutConstraint(item: progressView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0))
        parantView.addConstraint(NSLayoutConstraint(item: progressView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0))
        progressView.startAnimating()
    }
    /**
     Hides progress.
     */
    func stopAnimatingProgressView() {
        progressView.stopAnimating()
    }
}
