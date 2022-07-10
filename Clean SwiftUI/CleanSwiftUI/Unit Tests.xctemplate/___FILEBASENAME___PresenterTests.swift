//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

final class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___Presenter!
    private var viewController: ___VARIABLE_sceneName___ViewControllerMock!
    private var router: ___VARIABLE_sceneName___RouterMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        viewController = ___VARIABLE_sceneName___ViewControllerMock()
        router = ___VARIABLE_sceneName___RouterMock()
        viewController.router = router
        sut = ___VARIABLE_sceneName___Presenter()
        sut.viewController = viewController
    }

    override func tearDown() {
        sut = nil
        viewController = nil
        router = nil

        super.tearDown()
    }
}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___ViewControllerMock:
    ___VARIABLE_sceneName___DisplayLogic {
    var viewModel: ___VARIABLE_sceneName___ViewModel?
    var router: ___VARIABLE_sceneName___RoutingLogic?
}
