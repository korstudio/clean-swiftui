//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// swiftlint:disable force_cast
final class ___VARIABLE_sceneName___ConfiguratorTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___Configurator!
    private var viewModel: ___VARIABLE_sceneName___ViewModelMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        viewModel = ___VARIABLE_sceneName___ViewModelMock()
        sut = Default___VARIABLE_sceneName___Configurator()
    }

    override func tearDown() {
        sut = nil
        viewModel = nil

        super.tearDown()
    }

    func test_configurator_configure_allDependenciesProperlyConfigured() {
        let configured = sut.configured(with: viewModel)

        XCTAssertTrue(configured.router is ___VARIABLE_sceneName___Router)
        XCTAssertTrue(
            (configured.router as! ___VARIABLE_sceneName___Router)
                .source is ___VARIABLE_sceneName___SceneViewController
        )
        XCTAssertTrue(
            configured.interactor is ___VARIABLE_sceneName___Interactor
        )
        XCTAssertTrue(
            (configured.interactor as! ___VARIABLE_sceneName___Interactor)
                .presenter is ___VARIABLE_sceneName___Presenter
        )
        XCTAssertTrue(
            configured.interactor is ___VARIABLE_sceneName___Interactor
        )
        XCTAssertNotNil(configured.viewModel)
        XCTAssertTrue(
            viewModel.delegate is ___VARIABLE_sceneName___ViewController
        )
    }
}
