//
//  BookCell.swift
//  Baza
//
//  Created by Eustachy on 03.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import UIKit

protocol BookCellDelegate: class
{
    func deleteRow (indexPath: Int)
    

}

class BookCell: UITableViewCell {
    
    var indexPath: Int?
    
    weak var deleteDelegate: BookCellDelegate?

    @IBOutlet weak var noumberLabel: UILabel!
    
    @IBOutlet weak var tableLabel: UILabel!
    
    @IBAction func destroy(_ sender: Any) {
        if let index = self.indexPath {
            self.deleteDelegate?.deleteRow(indexPath: index)

        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
