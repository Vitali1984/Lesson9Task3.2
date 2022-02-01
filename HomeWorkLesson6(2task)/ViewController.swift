//
//  ViewController.swift
//  HomeWorkLesson6(2task)
//
//  Created by Виталий on 16.01.22.
//

import UIKit

class ViewController: UIViewController {

    private var buttonFill: UIButton!
    private var buttonClear: UIButton!
    
    private var labelRect1: UILabel!
    private var labelRect2: UILabel!
    private var labelRect3: UILabel!
    private var labelRect4: UILabel!
    private var labelRect5: UILabel!
    private var labelRect6: UILabel!
    
    //MARK: - ViewControllerLifeCicle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        
        buttonFill = UIButton()
        buttonFill.backgroundColor = .systemIndigo
        buttonFill.setTitle("FILL", for: .normal)
        buttonFill.setTitle("ON FILL", for: .highlighted)
        buttonFill.addTarget(self, action: #selector(onFillButton), for: .touchUpInside)
        customView.addSubview(buttonFill)
        
        buttonClear = UIButton()
        buttonClear.backgroundColor = .systemIndigo
        buttonClear.setTitle("CLEAR", for: .normal)
        buttonClear.setTitle("ON CLEAR", for: .highlighted)
        buttonClear.addTarget(self, action: #selector(onClearButton), for: .touchUpInside)
        customView.addSubview(buttonClear)
        
        labelRect1 = UILabel()
        customView.addSubview(labelRect1)
        labelRect2 = UILabel()
        customView.addSubview(labelRect2)
        labelRect3 = UILabel()
        customView.addSubview(labelRect3)
        labelRect4 = UILabel()
        customView.addSubview(labelRect4)
        labelRect5 = UILabel()
        customView.addSubview(labelRect5)
        labelRect6 = UILabel()
        customView.addSubview(labelRect6)
        
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray
    }
    
    //MARK: - Layout
    //MARK: -
    override func viewWillLayoutSubviews() {
        let wight: CGFloat = 100
        let hieght: CGFloat = 40
        
        buttonFill.frame = CGRect(x: view.bounds.midX - wight*3/2,
                                  y: view.bounds.maxY - hieght*3/2,
                                  width: wight,
                                  height: hieght)
        
        buttonClear.frame = CGRect(x: view.bounds.midX + wight*1/2,
                                  y: view.bounds.maxY - hieght*3/2,
                                  width: wight,
                                  height: hieght)
    }
    //MARK: - Action
    //MARK: -
    
    @objc func onFillButton() {
        createRect()
    }
    @objc func onClearButton() {
        labelRect1.removeFromSuperview()
        labelRect2.removeFromSuperview()
        labelRect3.removeFromSuperview()
        labelRect4.removeFromSuperview()
        labelRect5.removeFromSuperview()
        labelRect6.removeFromSuperview()
    }
    
    //MARK: - Private Methods
    //MARK: -
    
    func createRect() {
        
        let wight: CGFloat = 100
        let hieght: CGFloat = 100
        
        labelRect1.frame = CGRect(x: view.bounds.minX + wight/2,
                                 y: view.bounds.minY + hieght/2,
                                 width: wight,
                                 height: wight)

        labelRect1.backgroundColor = getRandomColor()

        var rect2 = labelRect1.frame.offsetBy(dx: 0, dy: 130)
        rect2.size = CGSize(width: wight, height: hieght)
        
        labelRect2.frame = rect2
        labelRect2.backgroundColor = getRandomColor()
        
        var rect3 = labelRect2.frame.offsetBy(dx: 0, dy: 130)
        rect3.size = CGSize(width: wight, height: hieght)
        
        labelRect3.frame = rect3
        labelRect3.backgroundColor = getRandomColor()
        
        var rect4 = labelRect1.frame.offsetBy(dx: view.bounds.maxX - wight*2, dy: 0)
        rect4.size = CGSize(width: wight, height: hieght)
        
        labelRect4.frame = rect4
        labelRect4.backgroundColor = getRandomColor()
        
        var rect5 = labelRect2.frame.offsetBy(dx: view.bounds.maxX - wight*2, dy: 0)
        rect5.size = CGSize(width: wight, height: hieght)
        
        labelRect5.frame = rect5
        labelRect5.backgroundColor = getRandomColor()
        
        var rect6 = labelRect3.frame.offsetBy(dx: view.bounds.maxX - wight*2, dy: 0)
        rect6.size = CGSize(width: wight, height: hieght)
        
        labelRect6.frame = rect6
        labelRect6.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
         let red:CGFloat = .random(in: 0...1)
         let green:CGFloat = .random(in: 0...1)
         let blue:CGFloat = .random(in: 0...1)

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
}

