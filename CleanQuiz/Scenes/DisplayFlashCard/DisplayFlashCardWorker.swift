//
//  DisplayFlashCardWorker.swift
//  CleanQuiz
//
//  Created by Rod Schmidt on 1/1/17.
//  Copyright (c) 2017 infiniteNIL. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

class DisplayFlashCardWorker
{
    private let store: FlashCardsStore

    // MARK: - Business Logic

    init(cardsStore: FlashCardsStore)
    {
        self.store = cardsStore
    }

    func fetchFlashCards(completionHandler: (FlashCardsStoreResult) -> Void)
    {
        store.fetchFlashCards { (result: FlashCardsStoreResult) in
            completionHandler(result)
        }
    }
}

// MARK: - Flash Cards store API

enum FlashCardsStoreResult
{
    case cards([FlashCard])
    case error(FlashCardsStoreError)
}

// MARK: - Orders store CRUD operation errors

enum FlashCardsStoreError: Equatable, Error
{
    case CannotFetch(String)
}

func ==(lhs: FlashCardsStoreError, rhs: FlashCardsStoreError) -> Bool
{
    switch (lhs, rhs) {
        case (.CannotFetch(let a), .CannotFetch(let b)) where a == b:
            return true

        default:
            return false
    }
}


protocol FlashCardsStore
{
    func fetchFlashCards(completionHandler: (FlashCardsStoreResult) -> Void)
}
