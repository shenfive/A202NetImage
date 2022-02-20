//
//  ViewController.swift
//  A202NetImage
//
//  Created by 申潤五 on 2022/2/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = "https://attach.setn.com/newsimages/2019/12/28/2328596-PH.jpg"
        let url = URL(string: path)!
        print(Date().timeIntervalSince1970)
        
        
        DispatchQueue.global().async {
            do {
                let imageData = try Data(contentsOf: url)
                DispatchQueue.main.async {
                    print("--EndTime--")
                    print(Date().timeIntervalSince1970)
                    print("----")
                    self.theImageView.image = UIImage(data: imageData)
                }
                
            }catch{
                print(error.localizedDescription)
            }
        }
        
        print(Date().timeIntervalSince1970)
        
    }


}

