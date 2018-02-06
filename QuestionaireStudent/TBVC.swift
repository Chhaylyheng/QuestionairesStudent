//
//  TBVC.swift
//  QuestionaireStudent
//
//  Created by KEEN on 2/6/18.
//  Copyright © 2018 Netman. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController{
    
    var names = [String]()
    var identities = [String]()
    override func viewDidLoad(){
        
        names = ["Yes/No","Yes/No*","Agree/Disagree","Agree/Disagree*","Two Choices","Two Choices*","Three Choices","Three Choices*","Four Choices","Four Choices*","Fiv e Choices","Five Choices*","Comment Only"]
        identities = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel!.text = names[indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    
}
