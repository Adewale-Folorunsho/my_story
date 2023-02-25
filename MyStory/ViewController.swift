//
//  ViewController.swift
//  MyStory
//
//  Created by Wale Folorunsho on 2/25/23.
//

import UIKit

class ViewController: UIViewController {
    let about = Detail(image:UIImage(named: "young_sheldon")!, text: "Dr. Sheldon Cooper BS, MS, MA, PhD, and ScD is a theoretical physicist at Caltech who is married to neurobiologist Amy Farrah Fowler, with whom he now lives in Apartment 4B after years of sharing an apartment with his best friend and colleague, Leonard Hofstadter. Sheldon is known for his brilliant mind but also his quirky behavior and idiosyncrasies.", title: "Who am I?")
    
    let education = Detail(image:UIImage(named: "sheldon education")!, text: " Sheldon Cooper attended East Texas Tech for three years and graduated in 1995 at the age of 14. Sheldon Cooper attended Medford High School before transferring to East Texas Tech at the age of 11 and earning his summa cum laude certification at the age of 14. It's not surprising that he began his college education closer to home given how protective his mother was of him and how young he was at the time. \nHe then pursued his doctorate at the California Institute of Technology before joining Caltech, where he is currently employed as a theoretical physicist.", title: "Educational Background")
    
    let smarter = Detail(image:UIImage(named: "sheldon nobel prize")!, text: "I won a Noble Prize for discovering super asymmetry.\n\nUnless you're Stephen Hawking. Then it's debatable", title: "Proof that I am smarter than you")
    
    var details: [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        details = [about, education, smarter]
    }
    
    @IBAction func aboutTGR(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            if tappedView.tag == 0{
                detailViewController.detail = details[0]
            }else if tappedView.tag == 1{
                detailViewController.detail = details[1]
            }else if tappedView.tag == 2{
                detailViewController.detail = details[2]
            }else{
                print("No detail was tapped, please check your selection.")
            }
        }
        
    }
}

