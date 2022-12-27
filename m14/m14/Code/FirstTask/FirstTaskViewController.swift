//
//  FirstTaskViewController.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit

class FirstTaskViewController: UIViewController {
    
    private let cellIdentifier = "cellIdentifier"
    
    private let countryNames: [String] = [ConstantsFirstTask.labelText.austriaLabel,
                                          ConstantsFirstTask.labelText.belgiumLabel,
                                          ConstantsFirstTask.labelText.franceLabel,
                                          ConstantsFirstTask.labelText.germanyLabel,
                                          ConstantsFirstTask.labelText.greeceLabel]
    
    private let countryFlags: [UIImage] = [ConstantsFirstTask.countryFlags.austriaFlag,
                                           ConstantsFirstTask.countryFlags.belgiumFlag,
                                           ConstantsFirstTask.countryFlags.franceFlag,
                                           ConstantsFirstTask.countryFlags.germanyFlag,
                                           ConstantsFirstTask.countryFlags.greeceFlag]
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Задание 1"
        
        setupViews()
        setConstraints()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FirstTaskCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    //    MARK: - Setup Views and Setup Constraints
    
    fileprivate func setupViews() {
        view.addSubview(tableView)
    }
    
    fileprivate func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension FirstTaskViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countryNames.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FirstTaskCell
        cell.configure(model: FirstTaskCellModel(cellLabelText: countryNames, cellImage: countryFlags), indexPath: indexPath)
        return cell
    }
}
