//
//  WelcomeViewController.swift
//  TNDRespect
//
//  Created by たうんりばー on 2022/02/16.
//

import UIKit

class WelcomeViewController: UIViewController {

    //MARK: - IBOutletes
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
        setupBackGroupTouch()
    }
    

    //MARK: - IBActions
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    
    //MARK: - Setup
    // 背景を触ったときに動作させる。
    private func setupBackGroupTouch() {
        backgroundImageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backgroundTap))
        backgroundImageView.addGestureRecognizer(tapGesture)
    }

    @objc private func backgroundTap(){
        print("tap")
        dissmissKeyboard()
    }
    //MARK: - Helpers
    private func dissmissKeyboard() {
        self.view.endEditing(false)
    }
}
