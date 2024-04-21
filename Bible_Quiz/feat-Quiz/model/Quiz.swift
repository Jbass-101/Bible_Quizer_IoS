//
//  Question.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/02.
//

import Foundation


public struct Quiz: Codable {
    let id: Int?
    let question: String
    let answer: String
    let hint: String
    let book: String
    let options: [String]
    
}

extension Quiz {
    
    static var mockData: [Quiz] = [
        .init(
            id: 1,
            question:
                "How many loaves and fishes did Jesus Christ feed the 5,000 with?",
            answer: "Five loaves and two fishes",
            hint: "Matthew 14 : 17",
            book: "Matthew",
            options: [
                "Five loaves and two fishes",
                "Two loaves and two fishes",
                "Five loaves and three fishes",
                "Two loaves and five fishes"]
        ),
        .init(
            id: 2,
            question: "Which is one the three things that happened when Jesus died?",
            answer: "Veil in the temple was torn",
            hint: "Matthew 27 : 51 - 52",
            book: "Matthew",
            options: [
              "Veil in the temple was torn",
              "All babies cried at once",
              "There was a plague",
              "There was a flood"
            ]
        ),
        .init(
            id: 3,
            question: "What did King Solomon ask From God?",
            answer: "Wisdom",
            hint: "1 Kings 3 : 9",
            book: "Kings",
            options: ["Wisdom", "Prosperity", "Fame", "Health"]
        ),
        .init(
            id: 4,
            question:
              "In which book of the Bible is this verse found? “Train up a child in the way he should go and when he is old, he will not turn from it.” ",
            answer: "Proverbs",
            hint: "Proverbs 22 : 6",
            book: "Proverbs",
            options: ["Proverbs", "Titus", "Leviticus", "Habakkuk"]
        ),
        .init(
            id: 5,
            question: "Where was Jesus Born?",
            answer: "Bethlehem",
            hint: "Matthew 2 : 1",
            book: "Matthew",
            options: ["Bethlehem", "Nazareth", "Jerusalem", "Galilee"]
        ),
        .init(
            id: 6,
            question: "How many fruits of the spirit are mentioned? ",
            answer: "9",
            hint: "Galatians 5 : 22",
            book: "Galatians",
            options: ["9", "8", "7", "10"]
        ),
        .init(
            id: 7,
            question:
              "What did Jacob give Joseph that sparked  jealousy from his siblings?",
            answer: "A coat of many colors",
            hint: "Genesis 37 : 3 - 4",
            book: "Genesis",
            options: [
              "A coat of many colors",
              "A gold ring",
              "All his inheritance",
              "A Staff",
            ]
        ),
        .init(
            id: 8,
            question: "How many days and nights did Jesus Fast?",
            answer: "40",
            hint: "Matthew 4 : 2",
            book: "Matthew",
            options: ["27", "365", "25", "40"]
        ),
        .init(
            id: 9,
            question: "How does the virgin Mary learn of her pregnancy?",
            answer: "From the angel Gabriel",
            hint: "Luke 1 : 26 - 45",
            book: "Luke",
            options: [
              "From the angel Gabriel",
              "From a vision in her dreams",
              "From the local doctor",
              "From fasting and praying",
            ]
        ),
        .init(
            id: 10,
            question: "Who wrote the book of Revelations?",
            answer: "John",
            hint: "Revelation 1 : 1",
            book: "Revelation",
            options: ["John", "Luke", "Mathew", "Mark"]
        ),
        .init(
            id: 11,
            question: "After his resurrection, to whom did Jesus appear first?",
            answer: "Mary Magdalene",
            hint: "John 20 : 11 - 18",
            book: "John",
            options: ["Mary Magdalene", "Thomas", "Peter", "Luke"]
        ),
        .init(
            id: 12,
            question: "What instrument did David play?",
            answer: "Harp",
            hint: "1 Samuel 16 : 14 - 23",
            book: "Samuel",
            options: ["Harp", "Flute", "Guitar", "Drums"]
        ),
        .init(
            id: 13,
            question: "How many people boarded Noah's Ark?",
            answer: "8",
            hint: "Genesis 7 : 13",
            book: "Genesis",
            options: ["8", "6", "2", "10"]
        ),
        .init(
            id: 14,
            question: "What is the Lord's fifth commandment?",
            answer: "Honor your father and mother",
            hint: "Exodus 20 : 1 - 17",
            book: "Exodus",
            options: [
              "Honor your father and mother",
              "Do not murder",
              "Have no idols",
              "Do not steal",
            ]
        ),
        .init(
            id: 15,
            question: "Which mother received payment to raise her own child?",
            answer: "Jochebed, mother of Moses",
            hint: "Exodus 2 : 7 - 10",
            book: "Exodus",
            options: [
              "Mary, mother of Jesus",
              "Hagar, mother of Ishmael",
              "Hannah, mother of Samuel",
              "Jochebed, mother of Moses",
            ]
        )
        
    ]
    
    static var sample = mockData[0]
    
    static var mockDataAll: [[Quiz]] = [
        [
            .init(
                id: 1,
                question:
                    "How many loaves and fishes did Jesus Christ feed the 5,000 with?",
                answer: "Five loaves and two fishes",
                hint: "Matthew 14 : 17",
                book: "Matthew",
                options: [
                    "Five loaves and two fishes",
                    "Two loaves and two fishes",
                    "Five loaves and three fishes",
                    "Two loaves and five fishes"]
            ),
            .init(
                id: 2,
                question: "Which is one the three things that happened when Jesus died?",
                answer: "Veil in the temple was torn",
                hint: "Matthew 27 : 51 - 52",
                book: "Matthew",
                options: [
                  "Veil in the temple was torn",
                  "All babies cried at once",
                  "There was a plague",
                  "There was a flood"
                ]
            ),
            .init(
                id: 3,
                question: "What did King Solomon ask From God?",
                answer: "Wisdom",
                hint: "1 Kings 3 : 9",
                book: "Kings",
                options: ["Wisdom", "Prosperity", "Fame", "Health"]
            ),
            .init(
                id: 4,
                question:
                  "In which book of the Bible is this verse found? “Train up a child in the way he should go and when he is old, he will not turn from it.” ",
                answer: "Proverbs",
                hint: "Proverbs 22 : 6",
                book: "Proverbs",
                options: ["Proverbs", "Titus", "Leviticus", "Habakkuk"]
            ),
            .init(
                id: 5,
                question: "Where was Jesus Born?",
                answer: "Bethlehem",
                hint: "Matthew 2 : 1",
                book: "Matthew",
                options: ["Bethlehem", "Nazareth", "Jerusalem", "Galilee"]
            ),
            .init(
                id: 6,
                question: "How many fruits of the spirit are mentioned? ",
                answer: "9",
                hint: "Galatians 5 : 22",
                book: "Galatians",
                options: ["9", "8", "7", "10"]
            ),
            .init(
                id: 7,
                question:
                  "What did Jacob give Joseph that sparked  jealousy from his siblings?",
                answer: "A coat of many colors",
                hint: "Genesis 37 : 3 - 4",
                book: "Genesis",
                options: [
                  "A coat of many colors",
                  "A gold ring",
                  "All his inheritance",
                  "A Staff",
                ]
            ),
            .init(
                id: 8,
                question: "How many days and nights did Jesus Fast?",
                answer: "40",
                hint: "Matthew 4 : 2",
                book: "Matthew",
                options: ["27", "365", "25", "40"]
            ),
            .init(
                id: 9,
                question: "How does the virgin Mary learn of her pregnancy?",
                answer: "From the angel Gabriel",
                hint: "Luke 1 : 26 - 45",
                book: "Luke",
                options: [
                  "From the angel Gabriel",
                  "From a vision in her dreams",
                  "From the local doctor",
                  "From fasting and praying",
                ]
            ),
            .init(
                id: 10,
                question: "Who wrote the book of Revelations?",
                answer: "John",
                hint: "Revelation 1 : 1",
                book: "Revelation",
                options: ["John", "Luke", "Mathew", "Mark"]
            ),
            .init(
                id: 11,
                question: "After his resurrection, to whom did Jesus appear first?",
                answer: "Mary Magdalene",
                hint: "John 20 : 11 - 18",
                book: "John",
                options: ["Mary Magdalene", "Thomas", "Peter", "Luke"]
            ),
            .init(
                id: 12,
                question: "What instrument did David play?",
                answer: "Harp",
                hint: "1 Samuel 16 : 14 - 23",
                book: "Samuel",
                options: ["Harp", "Flute", "Guitar", "Drums"]
            ),
            .init(
                id: 13,
                question: "How many people boarded Noah's Ark?",
                answer: "8",
                hint: "Genesis 7 : 13",
                book: "Genesis",
                options: ["8", "6", "2", "10"]
            ),
            .init(
                id: 14,
                question: "What is the Lord's fifth commandment?",
                answer: "Honor your father and mother",
                hint: "Exodus 20 : 1 - 17",
                book: "Exodus",
                options: [
                  "Honor your father and mother",
                  "Do not murder",
                  "Have no idols",
                  "Do not steal",
                ]
            ),
            .init(
                id: 15,
                question: "Which mother received payment to raise her own child?",
                answer: "Jochebed, mother of Moses",
                hint: "Exodus 2 : 7 - 10",
                book: "Exodus",
                options: [
                  "Mary, mother of Jesus",
                  "Hagar, mother of Ishmael",
                  "Hannah, mother of Samuel",
                  "Jochebed, mother of Moses",
                ]
            )
            
        ],
        [
            .init(
                id: 1,
                question:
                    "How many loaves and fishes did Jesus Christ feed the 5,000 with?",
                answer: "Five loaves and two fishes",
                hint: "Matthew 14 : 17",
                book: "Matthew",
                options: [
                    "Five loaves and two fishes",
                    "Two loaves and two fishes",
                    "Five loaves and three fishes",
                    "Two loaves and five fishes"]
            ),
            .init(
                id: 2,
                question: "Which is one the three things that happened when Jesus died?",
                answer: "Veil in the temple was torn",
                hint: "Matthew 27 : 51 - 52",
                book: "Matthew",
                options: [
                  "Veil in the temple was torn",
                  "All babies cried at once",
                  "There was a plague",
                  "There was a flood"
                ]
            ),
            .init(
                id: 3,
                question: "What did King Solomon ask From God?",
                answer: "Wisdom",
                hint: "1 Kings 3 : 9",
                book: "Kings",
                options: ["Wisdom", "Prosperity", "Fame", "Health"]
            ),
            .init(
                id: 4,
                question:
                  "In which book of the Bible is this verse found? “Train up a child in the way he should go and when he is old, he will not turn from it.” ",
                answer: "Proverbs",
                hint: "Proverbs 22 : 6",
                book: "Proverbs",
                options: ["Proverbs", "Titus", "Leviticus", "Habakkuk"]
            ),
            .init(
                id: 5,
                question: "Where was Jesus Born?",
                answer: "Bethlehem",
                hint: "Matthew 2 : 1",
                book: "Matthew",
                options: ["Bethlehem", "Nazareth", "Jerusalem", "Galilee"]
            ),
            .init(
                id: 6,
                question: "How many fruits of the spirit are mentioned? ",
                answer: "9",
                hint: "Galatians 5 : 22",
                book: "Galatians",
                options: ["9", "8", "7", "10"]
            ),
            .init(
                id: 7,
                question:
                  "What did Jacob give Joseph that sparked  jealousy from his siblings?",
                answer: "A coat of many colors",
                hint: "Genesis 37 : 3 - 4",
                book: "Genesis",
                options: [
                  "A coat of many colors",
                  "A gold ring",
                  "All his inheritance",
                  "A Staff",
                ]
            ),
            .init(
                id: 8,
                question: "How many days and nights did Jesus Fast?",
                answer: "40",
                hint: "Matthew 4 : 2",
                book: "Matthew",
                options: ["27", "365", "25", "40"]
            ),
            .init(
                id: 9,
                question: "How does the virgin Mary learn of her pregnancy?",
                answer: "From the angel Gabriel",
                hint: "Luke 1 : 26 - 45",
                book: "Luke",
                options: [
                  "From the angel Gabriel",
                  "From a vision in her dreams",
                  "From the local doctor",
                  "From fasting and praying",
                ]
            ),
            .init(
                id: 10,
                question: "Who wrote the book of Revelations?",
                answer: "John",
                hint: "Revelation 1 : 1",
                book: "Revelation",
                options: ["John", "Luke", "Mathew", "Mark"]
            ),
            .init(
                id: 11,
                question: "After his resurrection, to whom did Jesus appear first?",
                answer: "Mary Magdalene",
                hint: "John 20 : 11 - 18",
                book: "John",
                options: ["Mary Magdalene", "Thomas", "Peter", "Luke"]
            ),
            .init(
                id: 12,
                question: "What instrument did David play?",
                answer: "Harp",
                hint: "1 Samuel 16 : 14 - 23",
                book: "Samuel",
                options: ["Harp", "Flute", "Guitar", "Drums"]
            ),
            .init(
                id: 13,
                question: "How many people boarded Noah's Ark?",
                answer: "8",
                hint: "Genesis 7 : 13",
                book: "Genesis",
                options: ["8", "6", "2", "10"]
            ),
            .init(
                id: 14,
                question: "What is the Lord's fifth commandment?",
                answer: "Honor your father and mother",
                hint: "Exodus 20 : 1 - 17",
                book: "Exodus",
                options: [
                  "Honor your father and mother",
                  "Do not murder",
                  "Have no idols",
                  "Do not steal",
                ]
            ),
            .init(
                id: 15,
                question: "Which mother received payment to raise her own child?",
                answer: "Jochebed, mother of Moses",
                hint: "Exodus 2 : 7 - 10",
                book: "Exodus",
                options: [
                  "Mary, mother of Jesus",
                  "Hagar, mother of Ishmael",
                  "Hannah, mother of Samuel",
                  "Jochebed, mother of Moses",
                ]
            )
            
        ],
        [
            .init(
                id: 1,
                question:
                    "How many loaves and fishes did Jesus Christ feed the 5,000 with?",
                answer: "Five loaves and two fishes",
                hint: "Matthew 14 : 17",
                book: "Matthew",
                options: [
                    "Five loaves and two fishes",
                    "Two loaves and two fishes",
                    "Five loaves and three fishes",
                    "Two loaves and five fishes"]
            ),
            .init(
                id: 2,
                question: "Which is one the three things that happened when Jesus died?",
                answer: "Veil in the temple was torn",
                hint: "Matthew 27 : 51 - 52",
                book: "Matthew",
                options: [
                  "Veil in the temple was torn",
                  "All babies cried at once",
                  "There was a plague",
                  "There was a flood"
                ]
            ),
            .init(
                id: 3,
                question: "What did King Solomon ask From God?",
                answer: "Wisdom",
                hint: "1 Kings 3 : 9",
                book: "Kings",
                options: ["Wisdom", "Prosperity", "Fame", "Health"]
            ),
            .init(
                id: 4,
                question:
                  "In which book of the Bible is this verse found? “Train up a child in the way he should go and when he is old, he will not turn from it.” ",
                answer: "Proverbs",
                hint: "Proverbs 22 : 6",
                book: "Proverbs",
                options: ["Proverbs", "Titus", "Leviticus", "Habakkuk"]
            ),
            .init(
                id: 5,
                question: "Where was Jesus Born?",
                answer: "Bethlehem",
                hint: "Matthew 2 : 1",
                book: "Matthew",
                options: ["Bethlehem", "Nazareth", "Jerusalem", "Galilee"]
            ),
            .init(
                id: 6,
                question: "How many fruits of the spirit are mentioned? ",
                answer: "9",
                hint: "Galatians 5 : 22",
                book: "Galatians",
                options: ["9", "8", "7", "10"]
            ),
            .init(
                id: 7,
                question:
                  "What did Jacob give Joseph that sparked  jealousy from his siblings?",
                answer: "A coat of many colors",
                hint: "Genesis 37 : 3 - 4",
                book: "Genesis",
                options: [
                  "A coat of many colors",
                  "A gold ring",
                  "All his inheritance",
                  "A Staff",
                ]
            ),
            .init(
                id: 8,
                question: "How many days and nights did Jesus Fast?",
                answer: "40",
                hint: "Matthew 4 : 2",
                book: "Matthew",
                options: ["27", "365", "25", "40"]
            ),
            .init(
                id: 9,
                question: "How does the virgin Mary learn of her pregnancy?",
                answer: "From the angel Gabriel",
                hint: "Luke 1 : 26 - 45",
                book: "Luke",
                options: [
                  "From the angel Gabriel",
                  "From a vision in her dreams",
                  "From the local doctor",
                  "From fasting and praying",
                ]
            ),
            .init(
                id: 10,
                question: "Who wrote the book of Revelations?",
                answer: "John",
                hint: "Revelation 1 : 1",
                book: "Revelation",
                options: ["John", "Luke", "Mathew", "Mark"]
            ),
            .init(
                id: 11,
                question: "After his resurrection, to whom did Jesus appear first?",
                answer: "Mary Magdalene",
                hint: "John 20 : 11 - 18",
                book: "John",
                options: ["Mary Magdalene", "Thomas", "Peter", "Luke"]
            ),
            .init(
                id: 12,
                question: "What instrument did David play?",
                answer: "Harp",
                hint: "1 Samuel 16 : 14 - 23",
                book: "Samuel",
                options: ["Harp", "Flute", "Guitar", "Drums"]
            ),
            .init(
                id: 13,
                question: "How many people boarded Noah's Ark?",
                answer: "8",
                hint: "Genesis 7 : 13",
                book: "Genesis",
                options: ["8", "6", "2", "10"]
            ),
            .init(
                id: 14,
                question: "What is the Lord's fifth commandment?",
                answer: "Honor your father and mother",
                hint: "Exodus 20 : 1 - 17",
                book: "Exodus",
                options: [
                  "Honor your father and mother",
                  "Do not murder",
                  "Have no idols",
                  "Do not steal",
                ]
            ),
            .init(
                id: 15,
                question: "Which mother received payment to raise her own child?",
                answer: "Jochebed, mother of Moses",
                hint: "Exodus 2 : 7 - 10",
                book: "Exodus",
                options: [
                  "Mary, mother of Jesus",
                  "Hagar, mother of Ishmael",
                  "Hannah, mother of Samuel",
                  "Jochebed, mother of Moses",
                ]
            )
            
        ]
        
    ]
    
}


//data class Question Hashable, Identifyable(
//
//    var question: String = "",
//    var answer: String = "",
//    var hint: String = "",
//    var book: String = "",
//    var options: List<String> = listOf()
//
//    )
