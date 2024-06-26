//
//  Question.swift
//  KimMilyonerOlsun
//
//  Created Trakya11 on25.06.2024.
//

import Foundation


class Question {
    var question: String
    var options: [String]
    var correctAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    static let questions: [Question] = [
        Question(
            question: "Einstein'ın görelilik teorisi hangi iki kavramı birleştirir?",
            options: ["Hız ve Kütle", "Kütle ve Enerji", "Zaman ve Mekan", "Işık ve Hız"],
            correctAnswer: "Zaman ve Mekan"
        ),
        Question(
            question: "Dünyanın en büyük organı nedir?",
            options: ["Karaciğer", "Beyin", "Cilt", "Kalp"],
            correctAnswer: "Cilt"
        ),
        Question(
            question: "Hangi elementin sembolü 'O' harfi ile gösterilir?",
            options: ["Altın", "Oksijen", "Gümüş", "Kalsiyum"],
            correctAnswer: "Oksijen"
        ),
        Question(
            question: "Elektronun negatif yüklü olduğunu kim keşfetmiştir?",
            options: ["Isaac Newton", "Albert Einstein", "J.J. Thomson", "Niels Bohr"],
            correctAnswer: "J.J. Thomson"
        ),
        Question(
            question: "DNA'nın çift sarmal yapısını kimler keşfetmiştir?",
            options: ["James Watson ve Francis Crick", "Marie Curie ve Pierre Curie", "Charles Darwin ve Alfred Wallace", "Gregor Mendel ve Thomas Hunt Morgan"],
            correctAnswer: "James Watson ve Francis Crick"
        ),
        Question(
            question: "Dünyanın en büyük kıtası hangisidir?",
            options: ["Afrika", "Avrupa", "Asya", "Antarktika"],
            correctAnswer: "Asya"
        ),
        Question(
            question: "Hangi ülkenin iki farklı kıtada toprakları vardır?",
            options: ["Mısır", "Türkiye", "Rusya", "Brezilya"],
            correctAnswer: "Türkiye"
        ),
        Question(
            question: "Birleşmiş Milletler'in merkezi hangi şehirdedir?",
            options: ["Londra", "Paris", "New York", "Cenevre"],
            correctAnswer: "New York"
        ),
        Question(
            question: "Hangi ülkenin bayrağında kırmızı zemin üzerine beyaz bir haç vardır?",
            options: ["İsviçre", "Danimarka", "Norveç", "İzlanda"],
            correctAnswer: "İsviçre"
        ),
        Question(
            question: "\"Mona Lisa\" tablosu hangi müzede sergilenmektedir?",
            options: ["Prado Müzesi", "Louvre Müzesi", "Vatikan Müzesi", "British Museum"],
            correctAnswer: "Louvre Müzesi"
        ),
        Question(
            question: "\"Yıldızlı Gece\" adlı ünlü tablonun ressamı kimdir?",
            options: ["Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Leonardo da Vinci"],
            correctAnswer: "Vincent van Gogh"
        ),
        Question(
            question: "Hangi ünlü müzikalde \"Don't Cry for Me Argentina\" şarkısı söylenir?",
            options: ["Cats", "The Phantom of the Opera", "Evita", "Les Misérables"],
            correctAnswer: "Evita"
        ),
        Question(
            question: "Dünyanın en yüksek heykeli hangisidir?",
            options: ["Özgürlük Heykeli", "Birlik Heykeli", "Kristo Redentor", "Davut Heykeli"],
            correctAnswer: "Birlik Heykeli"
        ),
        Question(
            question: "Hangi ressam, yalnızca bir kulağıyla ünlüdür?",
            options: ["Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Salvador Dali"],
            correctAnswer: "Vincent van Gogh"
        ),
        Question(
            question: "Hangi klasik müzik bestecisi \"Ay Işığı Sonatı\" adlı eseriyle tanınır?",
            options: ["Wolfgang Amadeus Mozart", "Ludwig van Beethoven", "Johann Sebastian Bach", "Frédéric Chopin"],
            correctAnswer: "Ludwig van Beethoven"
        ),
        Question(
            question: "Olimpiyat Oyunları hangi antik uygarlıkta başlamıştır?",
            options: ["Roma", "Yunan", "Mısır", "Babil"],
            correctAnswer: "Yunan"
        ),
        Question(
            question: "Basketbolda üç sayılık atış çizgisi hangi mesafededir?",
            options: ["5.75 metre", "6.25 metre", "6.75 metre", "7.25 metre"],
            correctAnswer: "6.75 metre"
        ),
        Question(
            question: "Hangi ülke, 2018 FIFA Dünya Kupası'nı kazanmıştır?",
            options: ["Almanya", "Arjantin", "Fransa", "Brezilya"],
            correctAnswer: "Fransa"
        ),
        Question(
            question: "Roger Federer hangi spor dalında ünlüdür?",
            options: ["Futbol", "Basketbol", "Tenis", "Yüzme"],
            correctAnswer: "Tenis"
        ),
        Question(
            question: "Michael Phelps kaç Olimpiyat altın madalyası kazanmıştır?",
            options: ["18", "20", "22", "23"],
            correctAnswer: "23"
        )
    ]
    
    static func getRandomQuestions(number: Int) -> [Question] {
        return Array(questions.shuffled().prefix(number))
    }
    
}
