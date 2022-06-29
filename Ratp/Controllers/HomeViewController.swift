//
//  HomeViewController.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func handleDatasets() {
        self.navigationController?.pushViewController(DatasetListViewController(), animated: true)
    }
    

}
