//
//  FKWebView.swift
//  FKPageScrollView
//
//  Created by apple on 17/3/20.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class FKWebView: UIWebView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        scrollView.delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var changeClosures: DidChangeClosures!
    
    func scrolldidChangeClosures(closures: @escaping DidChangeClosures) {
        changeClosures = closures
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let changeClosures = changeClosures else {
            return
        }
        changeClosures(scrollView, false)
    }
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        changeClosures(scrollView, true)
    }
    


}
