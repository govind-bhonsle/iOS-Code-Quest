//
//  iOS_Coding_ChallengeTests.swift
//  iOS Coding ChallengeTests
//
//  Created by Govind Sonu on 15/05/24.
//

import XCTest
@testable import iOS_Coding_Challenge // Import your app module here

final class iOS_Coding_ChallengeTests: XCTestCase {
    
    var viewModel: ViewModel!
    var productService: ProductService!
    var mockProductService: MockProductService!
    
    override func setUp() {
        productService = ProductService()
        mockProductService = MockProductService()
    }
    
    // MARK: - Test Cases
    
    // MARK: - Test case to verify the success scenario of the getProducts method
    func testGetProductsSuccess() {
        // Arrange
        let expectedResult: Result<ProductModel, RequestError> = .success(ProductModel(products: [
            Product(id: uuidStr,
                    itemID: "2acf4ac1-4000-4766-91ac-3a0ab47a811c",
                    value: "100.00",
                    currency: "CAD",
                    title: "Item 1",
                    description: LocalizedDescription(enCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (EN).",
                    frCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (FR)."))]))
        
        mockProductService.getProductsResult = expectedResult
        
        // Act
        let expectation = XCTestExpectation(description: "Get products completion")
        Task {
                let result =  await mockProductService.getProducts()
                // Assert
                switch result {
                case .success(let productModel):
                    if let result = try expectedResult.get().products.first
                    {
                        let product_found_status = productModel.products.contains { product in
                            result.title == product.title
                        }
                        XCTAssert(product_found_status)
                    }
                case .failure:
                    XCTFail("Expected success, but got failure")
                }
                expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    //MARK: - Test case to verify the failure scenario of the getProducts method
    func testGetProductsFailure()  {
        // Arrange
        let expectedResult: Result<ProductModel, RequestError> = .failure(.unknown)
        mockProductService.getProductsResult = expectedResult
        
        // Act
        let expectation = XCTestExpectation(description: "Get products completion")
        Task {
            let result = await mockProductService.getProducts()
            // Assert
            switch result {
            case .success:
                XCTFail("Expected failure, but got success")
            case .failure(let error):
                XCTAssertEqual(error, .unknown)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    override func tearDown() {
        productService = nil
        mockProductService = nil
        super.tearDown()
    }
    
}

class MockProductService: ProductServiceable {
    var getProductsResult: Result<ProductModel, RequestError> = .failure(.unknown)
    
    func getProducts() async -> Result<ProductModel, RequestError> {
        return getProductsResult
    }
}
