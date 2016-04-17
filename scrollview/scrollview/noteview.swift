//
//  noteview.swift
//  scrollview
//
//  Created by GuruUgam on 4/16/16.
//  Copyright © 2016 GuruUgam. All rights reserved.
//

import UIKit

class noteview: UIViewController {

    @IBOutlet weak var txtview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func btntaglist(sender: UIButton) {
        
        let tgview = taglistview(nibName: "taglistview", bundle: nil)
        self.navigationController?.pushViewController(tgview, animated: true)
    }

    @IBAction func calendarview(sender: UIButton) {
        
        let tgview = ViewController(nibName: "ViewController", bundle: nil)
        self.navigationController?.pushViewController(tgview, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
