//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI

protocol ___VARIABLE_sceneName___BusinessLogic: AnyObject {
    func doSomething(request: ___VARIABLE_sceneName___.Request)
}

final class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic {
    var output: ___VARIABLE_sceneName___DisplayLogic?

    init(output: ___VARIABLE_sceneName___DisplayLogic) {
        self.output = output
    }

    func doSomething(request: ___VARIABLE_sceneName___.Request) {
        after(2) {
            output?.doSomething(response: .init())
        }
    }
}
