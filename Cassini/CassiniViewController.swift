//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Joseph Kim on 2022/01/01.
//

import UIKit

class CassiniViewController: UIViewController {

    
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indentifier = segue.identifier {
            if let url = DemoURLs.NASA[indentifier] {
                if let imageVC = segue.destination.contents as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
    
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
