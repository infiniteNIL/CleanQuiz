//
//  DisplayFlashCardConfigurator.swift
//  CleanQuiz
//
//  Created by Rod Schmidt on 1/1/17.
//  Copyright (c) 2017 infiniteNIL. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension DisplayFlashCardViewController: DisplayFlashCardPresenterOutput
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        router.passDataToNextScene(segue: segue)
    }
}

extension DisplayFlashCardInteractor: DisplayFlashCardViewControllerOutput
{
}

extension DisplayFlashCardPresenter: DisplayFlashCardInteractorOutput
{
}

class DisplayFlashCardConfigurator
{
    // MARK: - Object lifecycle

    static let sharedInstance = DisplayFlashCardConfigurator()

    private init() {}

    // MARK: - Configuration

    func configure(viewController: DisplayFlashCardViewController)
    {
        let router = DisplayFlashCardRouter()
        router.viewController = viewController

        let presenter = DisplayFlashCardPresenter()
        presenter.output = viewController

        let interactor = DisplayFlashCardInteractor()
        interactor.output = presenter

        viewController.output = interactor
        viewController.router = router
    }
}
