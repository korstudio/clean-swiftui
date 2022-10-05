//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI

extension ___VARIABLE_sceneName___ {
    typealias V = SwiftUI.View
    enum ViewFactory {
    // View factory
        enum ___VARIABLE_sceneName___Text {
            struct InputFields: V {
                @Binding var model: FlyingTextboxViewModel
                var body: some View {
                    FlyingTextBox(model: self.model)
                }
            }
        }
    }
}
