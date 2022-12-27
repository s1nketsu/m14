//
//  Constants.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit

enum ConstantsFirstTask {
    enum labelText {
        static var austriaLabel: String {
            return "Austria"
        }
        static var belgiumLabel: String {
            return "Belgium"
        }
        static var franceLabel: String {
            return "France"
        }
        static var germanyLabel: String {
            return "Germany"
        }
        static var greeceLabel: String {
            return "Greece"
        }
    }
    
    enum countryFlags {
        static var austriaFlag: UIImage {
            return UIImage(named: "Austria") ?? UIImage()
        }
        static var belgiumFlag: UIImage {
            return UIImage(named: "Belgium") ?? UIImage()
        }
        static var franceFlag: UIImage {
            return UIImage(named: "France") ?? UIImage()
        }
        static var germanyFlag: UIImage {
            return UIImage(named: "Germany") ?? UIImage()
        }
        static var greeceFlag: UIImage {
            return UIImage(named: "Greece") ?? UIImage()
        }
    }
}
