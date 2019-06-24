//
//  ViewController.swift
//  CaculatorApp
//
//  Created by TuanLA on 6/21/19.
//  Copyright © 2019 TuanLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btnCaculators: [UIButton] = {
        let btnValues = ["AC","+/-","%","/","7","8","9","x","4","5","6","-","1","2","3","+","0",".","="]
        var buttons=[UIButton]()
        for btnValue in btnValues{
            let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle(btnValue, for: .normal)
            btn.setTitleColor(UIColor.white, for: .normal)
            btn.backgroundColor = UIColor(displayP3Red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
            btn.titleLabel?.textAlignment = .center
            btn.titleLabel?.adjustsFontSizeToFitWidth = true
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 40)
            if ["AC","+/-","%"].contains(btnValue) {
                btn.setTitleColor(UIColor.black, for: .normal)
                btn.backgroundColor = UIColor(displayP3Red: 214/255, green: 214/255, blue: 214/255, alpha: 1)
            }
            if ["/","x","-","+","="].contains(btnValue) {
                btn.backgroundColor = UIColor(displayP3Red: 244/255, green: 150/255, blue: 61/255, alpha: 1)
                
            }
            buttons.append(btn)
        }
        return buttons
    }()
    
    let topContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lblCaculateResult: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "0"
        label.textAlignment = .right
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont(name: "Helvetica Light", size: 100)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bottomContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let stackAllButtons: UIStackViewCustom = {
        let stackView = UIStackViewCustom()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
//    let stackAllButtons: UIStackViewCustom = {
//        let stackView = UIStackViewCustom()
//
//        return stackView
//    }()
    
    let stackButtonsRow1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()

    let stackButtonsRow2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
    let stackButtonsRow3: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
    let stackButtonsRow4: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
    let stackButtonsRow5: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
    let subStackButtonsRow5: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        addSubView()
        layoutSubView()
        // Do any additional setup after loading the view.
    }
    
    func addSubView(){
        self.view.addSubview(topContainer)
        topContainer.addSubview(lblCaculateResult)
        
        self.view.addSubview(bottomContainer)
        bottomContainer.addSubview(stackAllButtons)
        stackAllButtons.addArrangedSubview(stackButtonsRow1)
        stackAllButtons.addArrangedSubview(stackButtonsRow2)
        stackAllButtons.addArrangedSubview(stackButtonsRow3)
        stackAllButtons.addArrangedSubview(stackButtonsRow4)
        stackAllButtons.addArrangedSubview(stackButtonsRow5)
        
        stackButtonsRow1.addArrangedSubview(btnCaculators[0])
        stackButtonsRow1.addArrangedSubview(btnCaculators[1])
        stackButtonsRow1.addArrangedSubview(btnCaculators[2])
        stackButtonsRow1.addArrangedSubview(btnCaculators[3])
        stackButtonsRow2.addArrangedSubview(btnCaculators[4])
        stackButtonsRow2.addArrangedSubview(btnCaculators[5])
        stackButtonsRow2.addArrangedSubview(btnCaculators[6])
        stackButtonsRow2.addArrangedSubview(btnCaculators[7])

        stackButtonsRow3.addArrangedSubview(btnCaculators[8])
        stackButtonsRow3.addArrangedSubview(btnCaculators[9])
        stackButtonsRow3.addArrangedSubview(btnCaculators[10])
        stackButtonsRow3.addArrangedSubview(btnCaculators[11])

        stackButtonsRow4.addArrangedSubview(btnCaculators[12])
        stackButtonsRow4.addArrangedSubview(btnCaculators[13])
        stackButtonsRow4.addArrangedSubview(btnCaculators[14])
        stackButtonsRow4.addArrangedSubview(btnCaculators[15])

        stackButtonsRow5.addArrangedSubview(btnCaculators[16])
        stackButtonsRow5.addArrangedSubview(subStackButtonsRow5)
        subStackButtonsRow5.addArrangedSubview(btnCaculators[17])
        subStackButtonsRow5.addArrangedSubview(btnCaculators[18])

    }
    
    func layoutSubView() {
        
        NSLayoutConstraint.activate([
            lblCaculateResult.heightAnchor.constraint(equalTo: topContainer.heightAnchor, multiplier: 2/3),
            lblCaculateResult.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor),
            lblCaculateResult.widthAnchor.constraint(equalTo: topContainer.widthAnchor, multiplier: 0.9),
            lblCaculateResult.bottomAnchor.constraint(equalTo: bottomContainer.topAnchor, constant: -5)
            ])
        
        NSLayoutConstraint.activate([
            topContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topContainer.bottomAnchor.constraint(equalTo: bottomContainer.topAnchor)
            ])
        
        NSLayoutConstraint.activate([
            bottomContainer.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.7245  ),
            bottomContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        NSLayoutConstraint.activate([
            stackAllButtons.topAnchor.constraint(equalTo: bottomContainer.topAnchor),
            stackAllButtons.leadingAnchor.constraint(equalTo: bottomContainer.leadingAnchor),
            stackAllButtons.trailingAnchor.constraint(equalTo: bottomContainer.trailingAnchor),
            stackAllButtons.bottomAnchor.constraint(equalTo: bottomContainer.bottomAnchor)
            ])
        
        
    }
    
}

