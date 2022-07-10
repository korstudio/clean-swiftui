//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created at ___DATE___, ___YEAR___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

final class ___VARIABLE_sceneName___RouterTests: XCTestCase {
    private var sut: ___VARIABLE_sceneName___Router!
    private var viewController: UIViewControllerMock!
    private var navigationController: UINavigationControllerMock!

    override func setUp() {
        super.setUp()

        UIView.setAnimationsEnabled(false)

        viewController = UIViewControllerMock()
        navigationController
            = UINavigationControllerMock(rootViewController: UIViewController())
        navigationController.pushViewController(viewController, animated: false)
        sut = ___VARIABLE_sceneName___Router()
        sut.source = viewController
    }

    override func tearDown() {
        sut = nil
        viewController = nil
        navigationController = nil

        super.tearDown()
    }
}

private final class UIViewControllerMock: UIViewController {}

private final class UINavigationControllerMock: UINavigationController {}
