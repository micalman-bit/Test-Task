//
//  TestAlbumsViewController.swift
//  TestTaskTests
//
//  Created by Andrey Samchenko on 13.10.2021.
//

import XCTest
@testable import TestTask

class TestAlbumsViewController: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewNotNilWhenViewIsLoaded() {
        let sut = AlbumsViewController()
        
//        sut.loadViewIfNeeded(
        
        XCTAssertNotNil(sut.loadViewIfNeeded())
    }
    
//    func testNumberOfSection() {
//        let sut = AlbumsViewController()
//        let tableView = UITableView()
//        tableView.dataSource = sut
//
//        let numberOfSection = tableView.numberOfSections
//
//        XCTAssertEqual(numberOfSection, 1)
//    }
}
