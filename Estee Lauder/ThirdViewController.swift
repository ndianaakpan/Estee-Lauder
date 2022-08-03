//
//  ThirdViewController.swift
//  Estee Lauder
//
//  Created by Ndiana Akpan on 8/3/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var responseOne: UILabel!
    
    @IBOutlet weak var responseTwo: UILabel!
    
    @IBOutlet weak var responseThree: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func questionOneOptionOne(_ sender: Any) {
        responseOne.text = "Correct!"
    }
    
    @IBAction func questionOneOptionTwo(_ sender: Any) {
        responseOne.text = "Wrong :("
    }
    
    @IBAction func questionTwoOptionTwo(_ sender: Any) {
        responseTwo.text = "Wrong :("
    }
    
    @IBAction func questionTwoOptionOne(_ sender: Any) {
        responseTwo.text = "Correct! This serum is the #1 serum in the US."
    }
    
    @IBAction func questionThreeOptionOne(_ sender: Any) {
        responseThree.text = "Wrong :("
    }
    
    
    @IBAction func questionThreeOptionTwo(_ sender: Any) {
        responseThree.text = "Correct!"
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
