//
//  StatGraph.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-05-21.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation
import UIKit
import SwiftCharts

class statGraph : UIViewController {
    
    var chartView: BarsChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do any additional setup after loading the view
        let chartConfig = BarsChartConfig(
            valsAxisConfig: ChartAxisConfig(from: 0, to: 10, by: 10),
            guidelinesConfig: GuidelinesConfig(dotted: false, lineWidth: 0, lineColor: UIColor.black)
        )
        
        
//
//        let test = BarsChartConfig(chartSettings: <#T##ChartSettings#>, valsAxisConfig: <#T##ChartAxisConfig#>, xAxisLabelSettings: <#T##ChartLabelSettings#>, yAxisLabelSettings: <#T##ChartLabelSettings#>, guidelinesConfig: <#T##GuidelinesConfig#>)
        
        let frame = CGRect(x: -30, y: 30, width: 128, height: 397)
        
        let chart = BarsChart(
            frame: frame,
            chartConfig: chartConfig,
            xTitle: "",
            yTitle: "",
            bars: [
                ("", 9),
                ("", 6),
                ("", 10),
                ("", 2)
            ],
            color: UIColor.black,
            barWidth: 15
        )
        
        
        
        self.view.addSubview(chart.view)
        self.chartView = chart
        
    }
    
    
}
