//
//  FlashCardStore.swift
//  CleanQuiz
//
//  Created by Rod Schmidt on 1/14/17.
//  Copyright © 2017 infiniteNIL. All rights reserved.
//

import Foundation

protocol FlashCardsStore
{
    func fetchFlashCards(completionHandler: @escaping (FlashCardsStoreResult) -> Void)
}

enum FlashCardsStoreResult
{
    case cards([FlashCard])
    case error(FlashCardsStoreError)
}

// MARK: - Orders store CRUD operation errors

enum FlashCardsStoreError: /*Equatable,*/ Error
{
    case unknownError
}

/*
func ==(lhs: FlashCardsStoreError, rhs: FlashCardsStoreError) -> Bool
{
    switch (lhs, rhs) {
        case (.cannotFetch(let a), .cannotFetch(let b)) where a == b:
            return true

        default:
            return false
    }
}
*/
