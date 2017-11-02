//
//  BooksViewController.swift
//  Baza
//
//  Created by Eustachy on 02.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var myList: [String] = ["Początek przymierza","Dark Eater Midir", "Twoj koniec jest bliski", "Apokalipsa", "Podstawy magii", "Jak latać na miotle", "deszcz a deszczyk", " Caryca Katarzyna i jej podboje", "Powstanie nieudane", "Początek końca", "tam gdzie ty tam nie ma nic", "aq", "sw", "dsa", "asdsadsadasd", "ghsdhfsd"]
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "Cellka")!
        cell.textLabel?.text = "ytgygyfyffr\(indexPath.row + 1) "
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
