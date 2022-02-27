//
//  ColorViewController.swift
//  MyGreatApp
//
//  Created by Str1de on 26.02.2022.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var ColorView: UIView!
    @IBOutlet var RedSlider: UISlider!
    @IBOutlet var GreenSlider: UISlider!
    @IBOutlet var BlueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorView.layer.cornerRadius = 15
        
        RedSlider.minimumTrackTintColor = .red
        GreenSlider.minimumTrackTintColor = .green
        
        // Do any additional setup after loading the view.
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
