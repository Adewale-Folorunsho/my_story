//
//  DetailViewController.swift
//  MyStory
//
//  Created by Eli Dorsey on 2/25/23.
//

import UIKit

class DetailViewController: UIViewController {
    var detail : Detail?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detail = detail{
            imageView.image = detail.image
            detailLabel.text = detail.text
            self.title = detail.title
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
