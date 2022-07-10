//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

protocol ___VARIABLE_sceneName___BusinessLogic: AnyObject {
    public func exampleBinding(someDetail: Binding<TestModel>)
}

// MARK: - Implementation

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic {
    let repository: ___VARIABLE_sceneName___Repository
    let viewState: ___VARIABLE_sceneName___ViewState

    init(repository: ___VARIABLE_sceneName___Repository, viewState: ___VARIABLE_sceneName___ViewState)

    // example for retrieving binding data
    // func viewBinding(someDetail: Binding<TestModel>) {
    //     someDetail.wrappedValue.textValue
    // }
}

struct TestModel {
    let textValue = "string"
}
