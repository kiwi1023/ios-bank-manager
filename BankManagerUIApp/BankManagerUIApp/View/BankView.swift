//
//  BankView.swift
//  BankManagerUIApp
//
//  Created by Kiwi, Kay on 2022/07/07.
//

import UIKit

class BankView: UIView {
    let waitingScrollView = UIScrollView()
    let workScrollView = UIScrollView()
    
    let addCustomers: UIButton = {
        var button = UIButton()
        button.setTitle("고객 10명 추가", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    let refresh: UIButton = {
        var button = UIButton()
        button.setTitle("초기화", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "00:00:000"
        label.textAlignment = .left
        label.font = .preferredFont(forTextStyle: .title3)
        
        return label
    }()
    
    let processingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "업무시간 -"
        label.textAlignment = .right
        label.font = .preferredFont(forTextStyle: .title3)
        
        return label
    }()
    
    let waitingLabel: UILabel = {
        let label = UILabel()
        label.text = "대기중"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .systemGreen
        label.font = .preferredFont(forTextStyle: .title1)
        
        return label
    }()
    
    let workLabel: UILabel = {
        let label = UILabel()
        label.text = "업무중"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .systemIndigo
        label.font = .preferredFont(forTextStyle: .title1)
        
        return label
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    let timerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    let statusStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    let waitingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
        return stackView
    }()
    
    let workStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
        return stackView
    }()
    
    let customerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        stackViewConfigure()
        setupButtonStackConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func stackViewConfigure() {
        [addCustomers, refresh].forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
        [processingTimeLabel, timerLabel].forEach {
            timerStackView.addArrangedSubview($0)
        }
        
        [waitingLabel, workLabel].forEach {
            statusStackView.addArrangedSubview($0)
        }
        
        [buttonStackView, timerStackView, statusStackView].forEach {
            mainStackView.addArrangedSubview($0)
        }
        
        [waitingScrollView, workScrollView].forEach {
            customerStackView.addArrangedSubview($0)
        }
        
        self.addSubview(mainStackView)
        waitingScrollView.addSubview(waitingStackView)
        workScrollView.addSubview(workStackView)
    }
    
    func setupButtonStackConstraints() {
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            waitingStackView.topAnchor.constraint(equalTo: waitingScrollView.topAnchor),
            waitingStackView.bottomAnchor.constraint(equalTo: waitingScrollView.bottomAnchor),
            waitingStackView.leadingAnchor.constraint(equalTo: waitingScrollView.leadingAnchor),
            waitingStackView.trailingAnchor.constraint(equalTo: waitingScrollView.trailingAnchor),
            waitingStackView.widthAnchor.constraint(equalTo: waitingScrollView.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            workStackView.topAnchor.constraint(equalTo: workScrollView.topAnchor),
            workStackView.bottomAnchor.constraint(equalTo: workScrollView.bottomAnchor),
            workStackView.leadingAnchor.constraint(equalTo: workScrollView.leadingAnchor),
            workStackView.trailingAnchor.constraint(equalTo: workScrollView.trailingAnchor),
            workStackView.widthAnchor.constraint(equalTo: workScrollView.widthAnchor)
        ])
    }
}
