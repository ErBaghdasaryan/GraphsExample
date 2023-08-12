//
//  ViewController.swift
//  GraphsExample
//
//  Created by Er Baghdasaryan on 03.07.23.
//

import Charts
import UIKit

class ViewController: UIViewController, ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        barChart.data = data
        
        barChart.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            barChart.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            barChart.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            barChart.widthAnchor.constraint(equalToConstant: 400),
            barChart.heightAnchor.constraint(equalToConstant: 400)
               ])

    }


}

