//
//  Question.swift
//  Personality Quiz
//
//  Created by Boris Zitserman on 04.07.2022.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
    
    static func getQuestion() -> [Question] {
        [
        Question(
        title: "Какую пищу вы предпочитаете?",
        answers: [
            Answer(title: "Стейк", animal: .dog),
            Answer(title: "Рыба", animal: .cat),
            Answer(title: "Морковь", animal: .rabbit),
            Answer(title: "Кукуруза", animal: .turtle)
        ],
        type: .single
        ),
        Question(
        title: "Что вам нравится больше?",
        answers: [
            Answer(title: "Плавать", animal: .dog),
            Answer(title: "Спать", animal: .cat),
            Answer(title: "Обнимать", animal: .rabbit),
            Answer(title: "Есть", animal: .turtle),
        ],
        type: .multiple
        ),
        Question(
        title: "Любите ли вы поездки на машине?",
        answers: [
            Answer(title: "Ненавижу", animal: .cat),
            Answer(title: "Нервничаю", animal: .rabbit),
            Answer(title: "Не замечаю", animal: .turtle),
            Answer(title: "Обожаю", animal: .dog),
        ],
        type: .ranged
        ),
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var defininition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
