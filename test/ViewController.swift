//
//  ViewController.swift
//  test
//
//  Created by Mac on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var not = ["fwfwfw"]
    
    @IBAction func button(_ sender: Any) {
        var textField = UITextField()
               
               let alert = UIAlertController(title: "Хотите добавить новую заметку?", message: "Введите текст ниже", preferredStyle: .alert)
               

               alert.addTextField { textfiled in
                   textField = textfiled
               }
               
               let actionYes = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
                   self.not.append(textField.text ?? ".")
                   self.tableView.reloadData()
               }
               
               let actionNO = UIAlertAction(title: "NO", style: .default) { UIAlertAction in
               }
               
               alert.addAction(actionNO)
               alert.addAction(actionYes)
               
               present(alert, animated: true, completion: nil)

        
            }
        
        
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading
            
        }
    }
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        not.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "post_cell", for: indexPath) as!TableViewCell12
        cell.lable1.text = not[indexPath.row]
        return cell
    }
    
        
    }
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        100
        
    }
}
