//
//  UserInfoViewController.swift
//  Itunes_testTask_youTube
//
//  Created by Andrey Samchenko on 08.10.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    private let firstNameLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Second Name"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Age"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .avenirNextDemiBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        setupViews()
        setConstraints()
        setModel()
    }
    
    private func setupViews() {
        title = "Active User"
        view.backgroundColor = .white

        stackView = UIStackView(arrangedSubviews: [firstNameLabel,
                                                   secondNameLabel,
                                                   ageLabel,
                                                   phoneLabel,
                                                   emailLabel,
                                                   passwordLabel],
                                axis: .vertical,
                                spacing: 20,
                                distribution: .fillProportionally)
        
        view.addSubview(stackView)
    }
    
    private func setModel() {
        guard let activeUser = DataBase.shared.activeUsers else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let dateString = dateFormatter.string(from: activeUser.age)
        
        firstNameLabel.text = "Name: " + activeUser.firstName
        secondNameLabel.text = "Surname: " + activeUser.secondName
        phoneLabel.text = "Phone: " + activeUser.phone
        emailLabel.text = "Email: " + activeUser.email
        passwordLabel.text = "Password: " + activeUser.password
        ageLabel.text = "Date of birth: " + dateString
    }
}

//MARK: - SetConstraints

extension UserInfoViewController {
    
    private func setConstraints() {

        NSLayoutConstraint.activate([
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}



