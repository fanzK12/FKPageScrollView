//
//  ViewController.swift
//  FKPageScrollView
//
//  Created by apple on 17/3/20.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var mainScroll: FKPageScroll = {
        let titles = ["图文详情", "产品参数", "店铺推荐"]
        
        let list = FKTableView(frame: CGRect(x: 0, y: 0, width: kDeviceWidth, height: kDeviceHeight - 64 - 40), style: .plain)
        
        let request1 = NSURLRequest(url: URL(string: "https://m.baidu.com/ssid=f17b33333837303736e20c/fm_kl=17709454cf/from=2001a/s?word=%E5%BE%AE%E5%8D%9A&sa=tb&ts=6034200&t_kt=0&ie=utf-8&rsv_t=9636R14NfDeI4cI7MF97ydINU%252FmY7bX1dtWdziBNOA6fZkpLbws7dZLopKs&rsv_pq=15161972120391105661&ss=100&t_it=1&rqlang=zh&rsv_sug4=8614&inputT=7161&oq=%E5%BE%AE%E5%8D%9A")!)
        let request2 = NSURLRequest(url: URL(string: "https://m.baidu.com/ssid=f17b33333837303736e20c/fm_kl=17709454cf/from=2001a/s?word=%E5%9C%A3%E5%A2%9F&sa=ts_1&ts=6172600&t_kt=0&ie=utf-8&rsv_t=18c9FSsvNfa4KliUIiab6G6ShwRtzV9CQw321kq2nHMcwhtyCXH0g5xte0E&rsv_pq=13829630444039355249&ss=100&rq=%E5%9C%A3&rqlang=zh&rsv_sug4=25954&inputT=24388&oq=%E6%89%8B%E6%9C%BA")!)
        let web1 = FKWebView(frame: CGRect(x: 0, y: 0, width: kDeviceWidth, height: kDeviceHeight - 64 - 40))
        let web2 = FKWebView(frame: CGRect(x: 0, y: 0, width: kDeviceWidth, height: kDeviceHeight - 64 - 40))
        web1.loadRequest(request1 as URLRequest)
        web2.loadRequest(request2 as URLRequest)
        let views = [list, web1, web2]
        
        let topView = Bundle.main.loadNibNamed("TopView", owner: self, options: nil)?.last as? TopView
        let size = topView?.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        topView?.frame = CGRect(x: 0, y: 0, width: kDeviceWidth, height: (size?.height)!)
        
        let scroll: FKPageScroll = FKPageScroll(frame: CGRect(x: 0, y: 64, width: kDeviceWidth, height: kDeviceHeight - 64),topView: topView!, titles: titles,views: views)
        return scroll
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "海贼王主页"
        automaticallyAdjustsScrollViewInsets = false
        view.addSubview(mainScroll)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

