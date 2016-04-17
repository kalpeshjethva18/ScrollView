//
//  ViewController.swift
//  scrollview
//
//  Created by GuruUgam on 4/16/16.
//  Copyright © 2016 GuruUgam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CKCalendarViewDelegate, CKCalendarViewDataSource {

    var data : NSMutableDictionary
    /*
    CKCalendarViewController *calendar = [CKCalendarViewController new];
    
    [calendar setDelegate:self];
    [calendar setDataSource:self];
    
    [[self presentViewController:calendar animated:YES completion:nil];
*/
    
    var calendar = CKCalendarViewController()
    
    required init?(coder aDecoder: NSCoder) {
        
        data = NSMutableDictionary()
        
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        self.data = NSMutableDictionary()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //  self.delegate = self
      //  self.dataSource = self
        
        calendar.dataSource = self
        
        //self.navigationController?.presentViewController(calendar, animated: true, completion: nil)
        //self.presentViewController(calendar, animated: true, completion: nil)
        
        //let app:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //let rootViewController = app.window?.rootViewController
        
        self.view.addSubview(calendar.view)
        self.addChildViewController(calendar)
        calendar.didMoveToParentViewController(self)
        
        let title : NSString = NSLocalizedString("Add Swift Demo", comment: "")
        let date : NSDate = NSDate(day: 14, month: 4, year: 2016)
        let event : CKCalendarEvent = CKCalendarEvent(title: title as String, andDate: date, andInfo: nil)
        
        
        self.data[date] = [event]
    }
    func calendarView(calendarView: CKCalendarView!, eventsForDate date: NSDate!) -> [AnyObject]! {
        
        return self.data.objectForKey(date) as! [AnyObject]!
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
