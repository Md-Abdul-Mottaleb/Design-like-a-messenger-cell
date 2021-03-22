//
//  TwooViewController.swift
//  Three
//
//  Created by MacBook Pro on 23/3/21.
//

import UIKit

class TwooViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
  

    @IBOutlet weak var tableviewfromsvc: UITableView!
    
    var image1 = [UIImage(named: "1"),
                  UIImage(named: "2"),
                  UIImage(named: "3"),
                  UIImage(named: "4"),
                  UIImage(named: "5"),
                  UIImage(named: "6"),
                  UIImage(named: "7"),
                  UIImage(named: "8")
    ]
    var image2 = [UIImage(named: "af"),
                  UIImage(named: "al"),
                  UIImage(named: "ar"),
                  UIImage(named: "au"),
                  UIImage(named: "az"),
                  UIImage(named: "be"),
                  UIImage(named: "bo"),
                  UIImage(named: "br")
    ]
    
    var Name = ["Alex","Albirt","Tomas","Martin","Batler","Gayel","Smith","Watson"]
    
    var Discriptions = ["General","Scientist","Scientist","Scientist","Cricketer","Cricketer","Cricketer","Cricketer"]
    
    var image3 = [UIImage(named: "af"),
                  UIImage(named: "al"),
                  UIImage(named: "ar"),
                  UIImage(named: "au"),
                  UIImage(named: "az"),
                  UIImage(named: "be"),
                  UIImage(named: "bo"),
                  UIImage(named: "br")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableviewfromsvc.delegate = self
        self.tableviewfromsvc.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewfromsvc.dequeueReusableCell(withIdentifier: "idforcell", for: indexPath) as! TableViewCell
        cell.imageview1.image = image1[indexPath.row]
        cell.imageview2.image = image2[indexPath.row]
        cell.textlabel1.text = Name[indexPath.row]
        cell.textlabel2.text = Discriptions[indexPath.row]
        cell.imageview3.image = image3[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableviewfromsvc.cellForRow(at: indexPath) as! TableViewCell
        
        cell.textlabel2.backgroundColor = UIColor.systemGray
    }

}
