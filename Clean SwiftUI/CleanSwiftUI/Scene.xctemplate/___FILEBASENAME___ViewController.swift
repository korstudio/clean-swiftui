//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

import SwiftUI
import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
    var router: ___VARIABLE_sceneName___RoutingLogic? { get set }
    var viewModel: ___VARIABLE_sceneName___ViewModel? { get set }
}

final class ___VARIABLE_sceneName___ViewController: UIHostingController<___VARIABLE_sceneName___View> {
    var interactor: ___VARIABLE_sceneName___InteractorLogic?
    var router: ___VARIABLE_sceneName___RoutingLogic?
    var viewModel: ___VARIABLE_sceneName___ViewModel?
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___DisplayLogic {}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewDelegate {
    // func didSomething() {}
}
