//
//  ThirdTaskViewController.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit

class ThirdTaskViewController: UITableViewController {
    
    private let thirdTaskCellIdentifier = "ThirdTaskCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Задание 3"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: thirdTaskCellIdentifier)
    }
    
    private func cellConfigure(cell: UITableViewCell, model: [NewsWithLocationModel], indexPath: IndexPath) {
        cell.textLabel?.numberOfLines = 2
        cell.textLabel!.font = UIFont(name: "Arial", size: 16)
        cell.textLabel!.textColor = .black
        cell.textLabel!.text = model[indexPath.row].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: thirdTaskCellIdentifier, for: indexPath)
        let model = newsWithLocationModels
        cellConfigure(cell: cell, model: model, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        newsWithLocationModels.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DescriptionViewController()
        let model = newsWithLocationModels
        vc.selfConfigure(model: model, indexPath: indexPath)
        navigationController?.pushViewController(vc, animated: true)
    }
}
