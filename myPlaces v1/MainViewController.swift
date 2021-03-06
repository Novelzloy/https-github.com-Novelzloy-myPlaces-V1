//
//  TableViewController.swift
//  myPlaces v1
// 
//  Created by Роман on 05.01.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    let places = Place.getPlace()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return places.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLable.text = places[indexPath.row].name
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.locationLable.text = places[indexPath.row].location
        cell.typeLable.text = places[indexPath.row].type
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace .clipsToBounds =  true

        return cell
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}

//    MARK: -Table view delegate


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
   

}
