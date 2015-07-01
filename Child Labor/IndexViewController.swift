//
//  IndexViewController.swift
//  Child Labor
//
//  Created by E J Kalafarski on 5/26/15.
//  Copyright (c) 2015 E J Kalafarski. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Navigation bar color
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0, green: 0.2, blue: 0.33, alpha: 1.0)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
//        self.toolbar.barTintColor = UIColor(red: 0.0, green: 0.2, blue: 0.33, alpha: 1.0)
//        self.toolbar.tintColor = UIColor.whiteColor()
        
        // Background image
        let bgImageView = UIImageView(image: UIImage(named: "eo"))
        bgImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.tableView.backgroundView = bgImageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Screen")!
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Countries"
        case 1:
            cell.textLabel?.text = "Goods"
        default:
            cell.textLabel?.text = "Exploitation Type"
        }
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}