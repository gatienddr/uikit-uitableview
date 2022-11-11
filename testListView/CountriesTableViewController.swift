//
//  CountriesTableViewController.swift
//  testListView
//
//  Created by Gatien DIDRY on 11/11/2022.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    let countries: [String] = ["France", "England", "Spain", "USA"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

        var content = cell.defaultContentConfiguration()

        content.text = countries[indexPath.row]

        content.image = UIImage(systemName: "arrow.down.right.circle")

        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

}
