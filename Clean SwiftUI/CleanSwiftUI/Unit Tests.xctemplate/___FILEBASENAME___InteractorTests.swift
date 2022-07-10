//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

final class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___Interactor!
    private var presenter: ___VARIABLE_sceneName___PresenterMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        presenter = ___VARIABLE_sceneName___PresenterMock()
        sut = ___VARIABLE_sceneName___Interactor()
        sut.presenter = presenter
    }

    override func tearDown() {
        sut = nil
        presenter = nil

        super.tearDown()
    }
}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___PresenterMock:
    ___VARIABLE_sceneName___PresenterLogic {}
