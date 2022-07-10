//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// swiftlint:disable force_cast
final class ___VARIABLE_sceneName___ViewModelTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___ViewModel!
    private var viewController: UIViewControllerMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        viewController = UIViewControllerMock()
        sut = Default___VARIABLE_sceneName___ViewModel()
        sut.delegate = viewController
    }

    override func tearDown() {
        sut = nil
        viewController = nil

        super.tearDown()
    }
}

// swiftlint:disable colon
private final class UIViewControllerMock:
    UIViewController, ___VARIABLE_sceneName___ViewDelegate {}
