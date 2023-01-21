//
//	SwiftUIXCTestCaseSampleTests.swift
//  SwiftUIXCTestCaseSampleTests
//
//  Created by Juan Mueller on 1/21/23.
//  For more, visit www.ajourneyforwisdom.com
//

import XCTest

final class SwiftUIXCTestCaseSampleTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        // Given
        let input = 5
        let expectedOutput = 25
        
        // When
        let actualOutput = input * input
        
        // Then
        XCTAssertEqual(actualOutput, expectedOutput)
    }
    
    func testAssertsTrue() throws {
        // Given
        let input = true
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertTrue(actualOutput)
    }

    func testAssertsFalse() throws {
        // Given
        let input = false
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertFalse(actualOutput)
    }

    func testAssertsEqual() throws {
        // Given
        let input = 5
        let expectedOutput = 5
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertEqual(actualOutput, expectedOutput)
    }

    func testAssertsNotEqual() throws {
        // Given
        let input = 5
        let expectedOutput = 10
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertNotEqual(actualOutput, expectedOutput)
    }

    func testAssertsNil() throws {
        // Given
        let input: Int? = nil
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertNil(actualOutput)
    }

    func testAssertsNotNil() throws {
        // Given
        let input: Int? = 5
        
        // When
        let actualOutput = input
        
        // Then
        XCTAssertNotNil(actualOutput)
    }
    
    func testCalculateResult() throws {
        // Given
        let input1 = "10"
        let input2 = "20"
        let expectedResult = "30"
        
        // When
        let subject = ViewModel()
        subject.input1 = input1
        subject.input2 = input2
        subject.calculate()
        
        // Then
        XCTAssertEqual(subject.output, expectedResult)
    }
    
    func testCalculateResultWithInvalidInput() throws {
        // Given
        let input1 = "aaa"
        let input2 = "20"
        
        // When
        let subject = ViewModel()
        subject.input1 = input1
        subject.input2 = input2
        
        // Then
        XCTAssertThrowsError(subject.calculate())
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
            let _ = ViewModel().calculate()
        }
    }

}
