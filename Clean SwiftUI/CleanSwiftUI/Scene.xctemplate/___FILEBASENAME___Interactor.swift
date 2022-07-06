//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

protocol ___VARIABLE_sceneName__Interactor: AnyObject {
    public func exampleBinding(someDetail: Binding<TestModel>)
}

// MARK: - Implementation

class ___VARIABLE_sceneName__InteractorImpl: ___VARIABLE_sceneName__Interactor {
    let repository: ___VARIABLE_sceneName__Repository
    let viewState: ___VARIABLE_sceneName__ViewState
    
    init(repository: ___VARIABLE_sceneName__Repository, viewState: ___VARIABLE_sceneName__ViewState)
    
    // example for retrieving binding data
    func exampleBinding(someDetail: Binding<TestModel>) {
        someDetail.wrappedValue.textValue
    }
}


struct TestModel {
    let textValue = "string"
}
