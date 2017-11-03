//
//  BooksViewController.swift
//  Baza
//
//  Created by Eustachy on 02.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, BookCellDelegate {
    
    var myList: [String] = ["Początek przymierza","Dark Eater Midir", "Twoj koniec jest bliski", "Apokalipsa", "Podstawy magii", "Jak latać na miotle", "deszcz a deszczyk", " Caryca Katarzyna i jej podboje", "Powstanie nieudane", "Początek końca", "tam gdzie ty tam nie ma nic", "aq", "sw", "dsa", "asdsadsadasd", "ghsdhfsd", "asdasdasd"]
    
    
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var actualBook: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        actualBook.text = myList[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (myList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "Cellka") as! BookCell
        cell.noumberLabel.text = "\(indexPath.row + 1)"
        cell.tableLabel.text = "\(myList[indexPath.row])"
        cell.deleteDelegate = self
        cell.indexPath = indexPath.row
        
        
        return cell
    }
    
    func deleteRow (indexPath: Int)
    {
        myList.remove(at: indexPath)
        
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
