//
//  ViewController.swift
//  SingleView
//
//  Created by Hrithik Kesharwani on 18/11/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView?
    let headerData = ["Alphabet", "Number"] //can update number of headers here
    let datasource = [
        ["a" ,"b", "c", "d", "e", "f", "g"],
        [ "1", "2", "3", "4", "5"]
                        ] //if headers are updated then update data too
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController :UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Just tapping at section = \(indexPath.section) row = \(indexPath.row)")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerLabel = UILabel()
        headerLabel.text = headerData[section]
        headerLabel.backgroundColor = .systemGray
        return headerLabel
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource[section].count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        cell.textLabel?.text = datasource[indexPath.section][indexPath.row]
        return cell
    }
    
    
    
}
