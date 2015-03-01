//
//  ViewController.swift
//  MAP-PIN-swift
//
//  Created by 加藤 周 on 2015/03/01.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MapViewを生成.
        var myMapView: MKMapView = MKMapView()
        myMapView.frame = self.view.frame
        
 
        // 経度、緯度.
        let myLatitude: CLLocationDegrees = 41.831896
        let myLongitude: CLLocationDegrees = 140.752839
        
        // 中心点.
        let center: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLatitude, myLongitude)
        
        // MapViewに中心点を設定.
        myMapView.setCenterCoordinate(center, animated: true)
        
        // 縮尺.
        // 表示領域.
        let mySpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMake(center, mySpan)
        
        // MapViewにregionを追加.
        myMapView.region = myRegion
        
        // viewにMapViewを追加.
        self.view.addSubview(myMapView)
        
        // ピンを生成.
        var myPin: MKPointAnnotation = MKPointAnnotation()
        
        // 座標を設定.
        myPin.coordinate = center
        
        // タイトルを設定.
        myPin.title = "タイトル"
        
        // サブタイトルを設定.
        myPin.subtitle = "サブタイトル"
        
        // MapViewにピンを追加.
        myMapView.addAnnotation(myPin)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

