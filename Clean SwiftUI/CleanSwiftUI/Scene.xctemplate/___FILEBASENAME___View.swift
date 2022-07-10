//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_sceneName___View: View {
    @EnvironmentObject var viewState: ___VARIABLE_sceneName__ViewState()
    @Environment(\.interactor) var interactor: InteractorContainer

    var body: some View {
        // start here

        // call interactor here
        .onAppear {
            // self.interactor...
        }
    }
}

#if DEBUG
struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    @State static var isDisplayed = true

    static var previews: some View {
//        ___VARIABLE_sceneName__(xx)
//            .inject(.preview)
//            .previewDevice("iPhone 12 Pro")
//            .previewDisplayName("iPhone 12 Pro")
    }
}
#endif
