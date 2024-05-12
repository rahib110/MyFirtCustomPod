//
//  DashboardViewController.swift
//  MyFirtCustomPod
//
//  Created by iMRhb on 12/5/24.
//

import UIKit

public class DashboardViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let label = UILabel()
        label.text = Logger().printVersion()
        label.frame = CGRect(origin: self.view.frame.origin, size: CGSize(width: self.view.frame.width, height: 50))
        label.textAlignment = .center
        self.view.addSubview(label)
        
        let image = UIImage(named: "abc")
        let imgView = UIImageView(frame: CGRect(origin: CGPoint(x: self.view.frame.origin.x, y: self.view.frame.origin.y + label.frame.height + 20), size: image?.size ?? CGSize(width: 0, height: 0)))
        imgView.image = image
        self.view.addSubview(imgView)
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
