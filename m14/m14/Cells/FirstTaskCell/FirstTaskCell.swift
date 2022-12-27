//
//  FirstTaskCell.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit

class FirstTaskCell: UITableViewCell {
    
//    MARK: - creating imageView and label
    
    private lazy var cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Austria")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var cellLabelText: UILabel = {
        let label = UILabel()
        label.text = "Австрия"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 25)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
//    MARK: - required inits
    
    required override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(model: FirstTaskCellModel, indexPath: IndexPath) {
        cellLabelText.text = model.cellLabelText[indexPath.row]
        cellImageView.image = model.cellImage[indexPath.row]
    }
    
    private func setConstraints() {
        self.addSubview(cellLabelText)
        self.addSubview(cellImageView)
        NSLayoutConstraint.activate([
            cellLabelText.leadingAnchor.constraint(equalTo: cellImageView.trailingAnchor, constant: 20),
            cellLabelText.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        
            cellImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cellImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            cellImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            cellImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            cellImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
