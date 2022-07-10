//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

final class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___ViewController!
    private var interactor: ___VARIABLE_sceneName___InteractorMock!
    private var router: ___VARIABLE_sceneName___RouterMock!
    private var viewModel: ___VARIABLE_sceneName___ViewModelMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        interactor = ___VARIABLE_sceneName___InteractorMock()
        router = ___VARIABLE_sceneName___RouterMock()
        viewModel = ___VARIABLE_sceneName___ViewModelMock()
        sut = ___VARIABLE_sceneName___ViewController(
            rootView: ___VARIABLE_sceneName___View(viewModel: viewModel)
        )
        sut.interactor = interactor
        sut.router = router
    }

    override func tearDown() {
        sut = nil
        interactor = nil
        router = nil
        viewModel = nil

        super.tearDown()
    }
}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___InteractorMock:
    ___VARIABLE_sceneName___SceneInteractorLogic {}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___RouterMock:
    ___VARIABLE_sceneName___RoutingLogic {}

final class ___VARIABLE_sceneName___ViewModelMock: ___VARIABLE_sceneName___ViewModel {
    var delegate: ___VARIABLE_sceneName___ViewDelegate?
}
