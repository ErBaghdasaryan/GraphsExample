//
//  ThirdViewController.swift
//  GraphsExample
//
//  Created by Er Baghdasaryan on 03.07.23.
//

import Charts
import UIKit

class ThirdViewController: UIViewController, ChartViewDelegate {
    
    var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
    }
    override func viewDidLayoutSubviews() {
        pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        view.addSubview(pieChart)
        
        var entries = [PieChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(PieChartDataEntry(value: Double(x), data: Double(x)))
        }
        
        let set = PieChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.colorful()
        
        let data = PieChartData(dataSet: set)
        pieChart.data = data
        
        pieChart.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pieChart.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pieChart.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pieChart.widthAnchor.constraint(equalToConstant: 400),
            pieChart.heightAnchor.constraint(equalToConstant: 400)
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
