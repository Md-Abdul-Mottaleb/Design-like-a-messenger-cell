//
//  TableViewCell.swift
//  Three
//
//  Created by MacBook Pro on 23/3/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageview1: UIImageView!
    
    @IBOutlet weak var imageview2: UIImageView!
    
    @IBOutlet weak var textlabel1: UILabel!
    
    @IBOutlet weak var textlabel2: UILabel!
    
    @IBOutlet weak var imageview3: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageview1.layer.cornerRadius = imageview1.frame.height / 2
       // imageview1.layer.cornerRadius = imageview1.frame.height / 2
        
        imageview2.layer.cornerRadius = imageview2.frame.height / 2
        
        imageview3.layer.cornerRadius = imageview3.frame.height / 2
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
