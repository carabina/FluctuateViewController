//
//  ViewController.swift
//  Demo
//
//  Created by Yoshimasa Sakuragi on 2017/09/24.
//  Copyright © 2017年 Yoshimasa Sakuragi. All rights reserved.

import UIKit

open class FluctuateViewController: UIViewController, FluctuateViewDataSource, FluctuateViewDelegate {
    
    public var fluctuateView: FluctuateView!
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        fluctuateView = FluctuateView(frame: self.view.frame)
        fluctuateView.dataSource = self
        fluctuateView.delegate = self
        self.view.addSubview(fluctuateView)
    }
    
    open func contentsCount() -> Int { return 0 }
    open func fluctuateView(_ fluctuateView: FluctuateView, contentTitle index: Int) -> String { return "" }
    open func fluctuateView(_ fluctuateView: FluctuateView, contentByIndex index: Int) -> UIViewController { return UIViewController() }
    open func fluctuateView(_ fluctuateView: FluctuateView, contentTypeByIndex index: Int) -> ContentViewType { return .fixed }
    open func coverView() -> CoverView { return CoverView(frame: self.view.frame) }
    open func menuView() -> MenuView { return MenuView() }
    open func noContentView() -> UIViewController { return UIViewController() }
    open func onStateChage(_ state: FluctuateViewState){ }
}
