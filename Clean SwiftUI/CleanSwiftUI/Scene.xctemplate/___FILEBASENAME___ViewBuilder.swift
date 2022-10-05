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
    // View factory
    enum Text {
        struct InputFields: V {
            @Binding var model: FlyingTextboxViewModel
            var body: some View {
                FlyingTextbox(self.model)
            }
        }
    }
}
