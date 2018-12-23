//
//  ToDoTableViewCell.swift
//  SimpleToDoList
//
//  Created by SSO on 17/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

protocol TodoCellDelegate {
    func didRequestDelete(_ cell:ToDoTableViewCell)
    func didRequestComplete (_ cell:ToDoTableViewCell)
}

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet var todoLabel: UILabel!
    
    var delegate:TodoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func completeTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestComplete(self)
        }
    }
    @IBAction func deleteTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestDelete(self)
    }
        func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
    }
}
