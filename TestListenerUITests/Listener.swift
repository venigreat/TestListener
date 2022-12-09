//
//  Listener.swift
//  TestListenerUITests
//
//  Created by Andrey Belyaev on 09.12.2022.
//

import Foundation
import XCTest

/* Класс лисенера обязательно должен удовлетворять протоколу XCTestObservation
 поэтому нужно, чтобы он видел XCTest
 он может переопределять(а может не переопределять) все методы протокола
 Класс необходимо поместить в свойство Principal class в Info.plist, тогда
 он начинает слушать события тестов
  */
class Listener: NSObject, XCTestObservation {
    override init() {
        super.init()
        log("initialisation")
        // класс обсервера обязательно нужно вручную добавлять в XCTestObservationCenter.shared
        XCTestObservationCenter.shared.addTestObserver(self)
    }
    func testBundleWillStart(_ testBundle: Bundle) {
        log("bundle will start")
    }
    func testSuiteWillStart(_ testSuite: XCTestSuite) {
        log("suit will start")
    }
    func testCaseWillStart(_ testCase: XCTestCase) {
        log("case will start")
    }
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: UInt) {
        log("test case")
    }
    func testCaseDidFinish(_ testCase: XCTestCase) {
        log("case did finish")
    }
    func testSuiteDidFinish(_ testSuite: XCTestSuite) {
        log("suite did finish")
    }
    
    func testBundleDidFinish(_ testBundle: Bundle) {
        log("bundle did finish")
        // также обсервера нужно уничтожать при завершении тестов
        XCTestObservationCenter.shared.removeTestObserver(self)
    }
}

private func log(_ message: String) {
    print("LOG: ====== \(message)")
}
