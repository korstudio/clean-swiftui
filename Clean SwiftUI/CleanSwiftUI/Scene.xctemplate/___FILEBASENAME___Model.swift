//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI

enum ___VARIABLE_sceneName___ {
    struct Request {
        
    }
    struct Response {
        var error: Error?
    }

    class ViewModel: ObservableObject {
        @Published var textbox: FlyingTextboxViewModel = .init(title: "Just for show", text: "", placeholder: "Say Something...", isPassword: true, autoFocus: true)
    }

}

extension ___VARIABLE_sceneName___ {
    // Use cases
}
