//
//  SecondTaskViewController.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit
import Foundation

class SecondTaskViewController: UITableViewController {
    
    private let secondTaskCellIdentifier = "SecondTaskCellIdentifier"
    
    private var sectionTitles: [String]? = ["Hello","World"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.allowsSelection = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: secondTaskCellIdentifier)
    }
    
//    MARK: - конфигурация ячейки
    
    private func cellConfigure(cell: UITableViewCell, model: [cellModel], indexPath: IndexPath) {
        cell.textLabel?.numberOfLines = 0
        cell.textLabel!.font = UIFont(name: "Arial", size: 16)
        cell.textLabel!.textColor = .black
        cell.textLabel!.text = model[indexPath.section].cellTitle[indexPath.row].title
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let arr = finishArray[section]
        let date = arr.cellPublishedAt
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        finishArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: secondTaskCellIdentifier, for: indexPath)
        let model = finishArray
        cellConfigure(cell: cell, model: model, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arr = finishArray[section]
        return arr.cellTitle.count
    }
}
