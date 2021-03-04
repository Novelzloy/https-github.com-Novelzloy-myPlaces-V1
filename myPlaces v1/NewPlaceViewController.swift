//
//  NewPlaceViewController.swift
//  myPlaces v1
//
//  Created by Роман on 04.03.2021.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
        
    }
// MARK: Table viwe delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }

}

// MARK: Text fitld delegate

extension NewPlaceViewController: UITextFieldDelegate{
    // Hide keyboard when push DONE
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
