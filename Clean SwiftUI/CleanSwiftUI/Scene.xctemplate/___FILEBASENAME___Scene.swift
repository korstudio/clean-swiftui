//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

final class ___VARIABLE_sceneName___Scene {
    private(set) var view: ___VARIABLE_sceneName___View

    init(viewModel: ___VARIABLE_sceneName___.ViewModel) {
        let title = NavbarSystem("", button: "")
        let interactor = ___VARIABLE_sceneName___Interactor()
        let navigator = ___VARIABLE_sceneName___Navigator()

        view = ___VARIABLE_sceneName___View(navbar: title, viewModel: viewModel)
        view.interactor = interactor
        view.navigator = navigator

        interactor.output = view
    }
}
