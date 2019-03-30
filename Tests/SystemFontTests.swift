//
//  SystemFontTests.swift
//  Swash_Tests
//
//  Created by Sam Francis on 7/21/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import Swash

class SystemFontTests: XCTestCase {
    
    //MARK: - Of Size - Different Weights/Styles
    
    func testSystemPreferredOfSize() {
        let font = SystemFont.preferred.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText")
    }
    
    func testSystemUltraLightOfSize() {
        let font = SystemFont.ultraLight.of(size: 14)
        XCTAssertEqual(font.pointSize, 14)
        XCTAssertEqual(font.fontName, ".SFUIText-Light")
    }
    
    func testSystemThinOfSize() {
        let font = SystemFont.thin.of(size: 11)
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.fontName, ".SFUIText-Light")
    }
    
    func testSystemLightOfSize() {
        let font = SystemFont.light.of(size: 8)
        XCTAssertEqual(font.pointSize, 8)
        XCTAssertEqual(font.fontName, ".SFUIText-Light")
    }
    
    func testSystemRegularOfSize() {
        let font = SystemFont.regular.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText")
    }
    
    func testSystemMediumOfSize() {
        let font = SystemFont.medium.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Medium")
    }
    
    func testSystemSemiboldOfSize() {
        let font = SystemFont.semibold.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Semibold")
    }
    
    func testSystemBoldOfSize() {
        let font = SystemFont.bold.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Bold")
    }
    
    func testSystemHeavyOfSize() {
        let font = SystemFont.heavy.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Heavy")
    }
    
    func testSystemBlackOfSize() {
        let font = SystemFont.black.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Heavy")
    }
    
    func testSystemItalicOfSize() {
        let font = SystemFont.italic.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Italic")
    }
    
    func testSystemSemiboldItalicOfSize() {
        let font = SystemFont.boldItalic.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        #if(iOS)
        XCTAssertEqual(font.fontName, ".SFUIText-SemiboldItalic")
        #elseif (tvOS)
        XCTAssertEqual(font.fontName, ".SFUIText-BoldItalic")
        #endif
    }
    
    func testSystemCondensedOfSize() {
        let font = SystemFont.condensed.of(size: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUITextCondensed-Regular")
    }
    
    
    //MARK: - Dynamic Type
    
    func testSystemPreferredOfTextStyle() {
        #if(iOS)
        XCTAssertEqual(SystemFont.preferred.of(textStyle: .body).fontName, ".SFUIText")
        #elseif (tvOS)
        XCTAssertEqual(SystemFont.preferred.of(textStyle: .body).fontName, ".SFUIText-Medium")
        #endif
    }
    
    func testSystemRegularOfTextStyle() {
        #if(iOS)
        XCTAssertEqual(SystemFont.italic.of(textStyle: .largeTitle).fontName, ".SFUIDisplay-Italic")
        #elseif (tvOS)
        XCTAssertEqual(SystemFont.italic.of(textStyle: .title1).fontName, ".SFUIDisplay-Italic")
        #endif
    }
    
    func testSystemItalicOfTextStyleMax() {
        #if(iOS)
        let font = SystemFont.italic.of(textStyle: .largeTitle, maxSize: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Italic")
        #elseif (tvOS)
        let font = SystemFont.italic.of(textStyle: .title1, maxSize: 12)
        XCTAssertEqual(font.pointSize, 12)
        XCTAssertEqual(font.fontName, ".SFUIText-Italic")
        #endif
    }
    
}
