//
//  ExamViewController.swift
//  KimMilyonerOlsun
//
//  Created Trakya11 on25.06.2024.
//

import UIKit

class ExamViewController: UIViewController {
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!

    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var currentQuestionLabel: UILabel!
    
    var buttons: [UIButton]!
    var labels: [UILabel]!
    
    var currentQuestionIndex : Int = 0
    var randomQuestions = Question.getRandomQuestions(number: 15)
    lazy var currentQuestion: Question = {
        return self.randomQuestions[currentQuestionIndex]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [aButton, bButton, cButton, dButton]
        labels = [aLabel, bLabel, cLabel, dLabel]
        buttons.forEach { btn in
            btn.layer.cornerRadius = 5
            btn.addTarget(self, action: #selector(answerButtonClicked(_:)), for: .touchUpInside)
        }
        self.progressBar.progress = 1 / 15
        renderPage()
    }
    
    @objc func answerButtonClicked(_ sender : UIButton) {
        if let firstCharacter = sender.titleLabel!.text!.first, let unicodeScalar = firstCharacter.unicodeScalars.first {
            self.buttons.forEach { button in
                button.isEnabled = false
            }
            let unicodeValue = Int(unicodeScalar.value)
            let answerLabel = labels[unicodeValue - 65]
            if answerLabel.text == currentQuestion.correctAnswer {
                sender.backgroundColor = .systemGreen
                currentQuestionIndex += 1
                let timer = Timer(timeInterval: 1.0, repeats: false) { timer in
                    if self.currentQuestionIndex == 15 {
                        let alert = UIAlertController(title: "Tebrikler!", message: "Tüm soruları doğru bildiniz.", preferredStyle: .alert)
                        let yesAction = UIAlertAction(title: "Tamam", style: .default) { _ in
                            self.performSegue(withIdentifier: "toMain", sender: self)
                        }
                        alert.addAction(yesAction)
                        self.present(alert, animated: true)
                        return
                    }
                     self.buttons.forEach { button in
                         button.isEnabled = true
                     }
                    sender.backgroundColor = .darkGray
                    self.renderPage()
                    self.progressBar.progress = (1 / 15.0) * Float(self.currentQuestionIndex + 1)
                }
                RunLoop.main.add(timer, forMode: .default)
            }else {
                sender.backgroundColor = .red
                let alert = UIAlertController(title: "Kaybettiniz!", message: "Tekrardan Oynamak İster misin?", preferredStyle: .alert)
                let yesAction = UIAlertAction(title: "Evet", style: .default) { _ in
                    self.performSegue(withIdentifier: "toMain", sender: self)
                }
                let noAction = UIAlertAction(title: "Hayır", style: .cancel) { _ in
                    exit(0)
                }
                alert.addAction(yesAction)
                alert.addAction(noAction)
                self.present(alert, animated: true)
            }
            
        }
    }
    
    func renderPage() {
        currentQuestion = randomQuestions[currentQuestionIndex]
        currentQuestionLabel.text = "\(currentQuestionIndex + 1). Soru"
        questionTextView.text = currentQuestion.question
        currentQuestion.options.enumerated().forEach { (index, answerText) in
            labels[index].text = answerText
        }
    }

}