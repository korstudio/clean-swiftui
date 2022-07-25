//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI

protocol ___VARIABLE_sceneName___DisplayLogic {}

struct ___VARIABLE_sceneName___View: View {
    @EnvironmentObject var popupAction: PopupActions

    @ObservedObject var navbar: NavbarSystem
    @ObservedObject var viewModel: ___VARIABLE_sceneName___.ViewModel

    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var navigator: ___VARIABLE_sceneName___NavigationLogic?

    var body: some View {
        BaseView(navbar) {
            VStack {
                //
            }
        }
        .onAppear {
            popupAction.isPresented = false
        }
    }
}

extension ___VARIABLE_sceneName___View: ___VARIABLE_sceneName___DisplayLogic {}

struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    static var previews: some View {
        let popupAction = PopupActions()
        ___VARIABLE_sceneName___Scene(viewModel: .init()).view.environmentObject(popupAction)
    }
}
