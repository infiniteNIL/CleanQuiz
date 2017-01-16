//
//  FlashCardsMemStore.swift
//  CleanQuiz
//
//  Created by Rod Schmidt on 1/1/17.
//  Copyright © 2017 infiniteNIL. All rights reserved.
//

import Foundation

class FlashCardsMemStore: FlashCardsStore
{
    let flashCards = [
        FlashCard(question: "From what is cognac made?",
                  answer: "Grapes"),

        FlashCard(question: "What is 7+7?",
                  answer: "14"),

        FlashCard(question: "What is the capital of Vermont?",
                  answer: "Montpelier"),
    ]

    func fetchFlashCards(completionHandler: (FlashCardsStoreResult) -> Void)
    {
        completionHandler(.cards(flashCards))
    }
}
