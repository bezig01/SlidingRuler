//
//  ScaleView.swift
//
//  SlidingRuler
//
//  MIT License
//
//  Copyright (c) 2020 Pierre Tacchi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//


import SwiftUI

public protocol ScaleView: FractionableView, Equatable {
    associatedtype ScaleShape: Shape

    var shape: ScaleShape { get }
    var width: CGFloat { get }
    var height: CGFloat { get }

    var unitMarkWidth: CGFloat { get }
    var halfMarkWidth: CGFloat { get }
    var fractionMarkWidth: CGFloat { get }

    var unitMarkOffset: CGFloat { get }
    var halfMarkOffset: CGFloat { get }
    var fractionMarkOffset: CGFloat { get }
}

public extension ScaleView {
    var body: some View {
        shape
            .frame(size: .init(width: width, height: height))
            .fixedSize()
    }

    var unitMarkOffset: CGFloat { 0 }
    var halfMarkOffset: CGFloat { 0 }
    var fractionMarkOffset: CGFloat { 0 }

    static func ==(lhs: Self, rhs: Self) -> Bool {
        lhs.width == rhs.width && lhs.height == rhs.height
    }
}


