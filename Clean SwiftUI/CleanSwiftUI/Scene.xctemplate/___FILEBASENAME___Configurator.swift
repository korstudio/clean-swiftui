//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___
//

import Foundation
import SwiftUI

protocol ___VARIABLE_sceneName___Configurator {
    func configured(with viewModel: ___VARIABLE_sceneName___ViewModel) -> ___VARIABLE_sceneName___ViewController
}

final class Default___VARIABLE_sceneName___Configurator: ___VARIABLE_sceneName___Configurator {
    func configured(with viewModel: ___VARIABLE_sceneName___ViewModel) -> ___VARIABLE_sceneName___ViewController {
        var viewModel = viewModel

        let viewController = ___VARIABLE_sceneName___ViewController(rootView: ___VARIABLE_sceneName___View(viewModel: viewModel))
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()

        router.source = viewController
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
        viewController.viewModel = viewModel
        viewModel.delegate = viewController
        return viewController
    }
}
