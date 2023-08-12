//
//  SecondViewController.swift
//  GraphsExample
//
//  Created by Er Baghdasaryan on 03.07.23.
//

import Charts
import UIKit

class SecondViewController: UIViewController, ChartViewDelegate {

    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = LineChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.joyful()
        
        let data = LineChartData(dataSet: set)
        lineChart.data = data
        
        lineChart.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lineChart.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineChart.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            lineChart.widthAnchor.constraint(equalToConstant: 400),
            lineChart.heightAnchor.constraint(equalToConstant: 400)
               ])

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
