//
//  Clase16Tests.swift
//  Clase16Tests
//
//  Created by Alumno on 1/16/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import XCTest
@testable import Clase16

class Clase16Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testApplyCoupon() {
        var product = Product(name: "Casaca", price: 25)
        let coupon = Coupon(name: "Cupon descuento 20%", discount: 20)
        product.apply(coupon)
        
        XCTAssertEqual(product.price, 20)
    }

}
