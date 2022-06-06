//
//  ViewController.swift
//  Milestone
//
//  Created by Emir Alkal on 4.06.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var countries = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = countries[indexPath.row]
        cell.imageView?.image = UIImage(named: countries[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "destVC") as? DetailViewController {
            vc.imageTitle = countries[indexPath.row]
            vc.image = tableView.cellForRow(at: indexPath)?.imageView?.image
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

