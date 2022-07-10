//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

import SwiftUI

protocol ___VARIABLE_sceneName___ViewDelegate: AnyObject {
    // func didSomething()
}

protocol ___VARIABLE_sceneName___ViewModel {
    var delegate: ___VARIABLE_sceneName___ViewDelegate? { get set }
    // var text: String { get }
}

final class Default___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModel {
    var delegate: ___VARIABLE_sceneName___ViewDelegate?
    // @Published private(set) var text: String

    // init(text: String) {
    //     self.text = text
    // }
}
