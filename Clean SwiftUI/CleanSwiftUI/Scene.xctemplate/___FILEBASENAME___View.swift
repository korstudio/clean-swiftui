//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI
import Combine

protocol ___VARIABLE_sceneName___DisplayLogic {
    func displaySomething(response: ___VARIABLE_sceneName___.ViewModel)
}

struct ___VARIABLE_sceneName___View: View {
    @ObservedObject var viewSystem: SystemViewBasedModel
    @ObservedObject var viewModel: ___VARIABLE_sceneName___.ViewModel

    //Next view's viewModel and viewSystem hosting here
    
    @State var nextViewModel: ___VARIABLE_sceneName___.ViewModel = .init()
    @State var nextViewSystem: SystemViewBasedModel = .init(.init("NAVBAR_TITLE", isModal: false /*MODAL_VIEW?*/, shadow: true /*NEED_SHADOW_UNDER_NAV?*/, isHidden: false /*IS_NAVII_HIDDEN?*/))
    
    @State private var router: String?
    @State private var cancellable: [AnyCancellable] = [AnyCancellable]()
    @State private var disableButton: Bool = true
    @State private var interactor: ___VARIABLE_sceneName___BusinessLogic?
    @State private var navigator: ___VARIABLE_sceneName___NavigationLogic?

    @State private var nextViewRoutingID: String = "nextViewRoutingID"
    var body: some View {
        // Use BaseNavigationView on the rootView
        BaseView(viewSystem) {
            ScrollView {
                VStack(spacing: 20) {
                    // Contents view here
                    Text("Welcome ___VARIABLE_sceneName___View")
                        .headline1Typo(.primaryDark) 
                    Text("___VARIABLE_sceneName___View Link")
                        .link {
                            /*
                            // navigate example
                            router = nextViewRoutingID
                            */
                        }       
                    ___VARIABLE_sceneName___.Text.InputFields(model: $viewModel.textbox)
                    Spacer()

                    // Button and how to show hud
                    // 1: Button Title
                    // 2: enable/disable button 
                    // 3: turn button to show loading inside
                    PrimaryButton("BUTTON_TITLE", disabled: $disableButton, loading: viewSystem.$viewState.isProgressing) {
                        // do something here
                        interactor?.doSomething(request: .init())
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            //Routing view here
            Group {
                Router(name: nextViewRoutingID, 
                    binding: $router) {
                    ___VARIABLE_sceneName___View(viewSystem: nextViewSystem,
                            viewModel: nextViewModel)
                }.build()
            }
        }
        /*
        /// Tosting view here
        .toast(toastModel)  
        /// Modal half screen here          
        .presentModal($modalTest)
        */
        .onAppear {
            // NavButton on the right of the navigationBar
            if (viewSystem.naviiBar.rightItems?.count ?? 0) < 1 {
                viewSystem.naviiBar.rightItems?.append(rightButton)
            }


            addObservers()
            self.interactor = ___VARIABLE_sceneName___Interactor(output: self)

            after(2) {
                viewModel.textbox.focus()
            }
            /*
            viewSystem.viewState.isLoading = true
            after(3) {
                viewModel.viewState.isLoading.toggle()
            }
            mainAsync{}
            mainAnimate(.easeIn) {}
            mainAnimate(.easeIn, after: 3) {}
            */      
        }
    }

    private var rightButton: NavButton {
        NavButton(Icon.cross.image)
    }

    private var rightButton2: NavButton {
        NavButton(Icon.alarmClock.image)
    }

    private func addObservers() {
        NotificationCenter.default.publisher(for: .rightItemAction)
            .sink { notification in
                if let obj = notification.object as? NavButton {
                    switch obj {
                    case rightButton:
                        // isPresenting.toggle()
                        ()
                    case rightButton2:
                        //do something
                        ()
                    default:
                        ()
                    }
                }
            }
            .store(in: &cancellable)

        viewModel.textbox.$text
            .filter { $0.isNotEmpty }
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .sink { val in
                mainAnimate {
                    viewSystem.naviiBar.title = val
                }
            }
            .store(in: &cancellable)
    }
}

extension ___VARIABLE_sceneName___View: ___VARIABLE_sceneName___DisplayLogic {
    func displaySomething(response: ___VARIABLE_sceneName___.ViewModel) {
        // print("\(viewModel.name)
    }
}

struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    static var previews: some View {
       Group{
            ___VARIABLE_sceneName___View(viewSystem: SystemViewBasedModel.Mock_Nav,
                            viewModel: .init())
            .sheet(isPresented: .constant(true)){
                ___VARIABLE_sceneName___View(viewSystem: SystemViewBasedModel.Mock_Nav,
                                viewModel: .init())
            }
        }
    }
}
