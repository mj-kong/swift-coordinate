//
//  OutputView.swift
//  CoordinateCalculator
//
//  Created by jang gukjin on 17/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct OutputView{
    /// 좌표를 그리는 함수
    func drawAxis() {
        print("\(ANSICode.clear)\(ANSICode.home)")
        print("\(ANSICode.text.blueBright)\(ANSICode.axis.draw())")
    }
    /// 두개의 좌표가 입력되었을때 MyLine 구조체의 변수들을 토대로 점을 찍는 함수
    func printMyLine(myLine : MyLine){
        print("\(ANSICode.text.whiteBright)\(ANSICode.cursor.move(row: 25-myLine.pointA.y, col: (myLine.pointA.x*2)+2))*")
        print("\(ANSICode.text.whiteBright)\(ANSICode.cursor.move(row: 25-myLine.pointB.y, col: (myLine.pointB.x*2)+2))*")
        print("\(ANSICode.cursor.move(row: 27, col: 25))")
        print("두 점사이의 거리는 \(myLine.lengthCalculator())")
    }
    /// 한개의 좌표가 입력되었을때 MyPoint 구조체의 변수들을 토대로 점을 찍는 함수
    func printMyPoint(myPoint : MyPoint){
        print("\(ANSICode.text.whiteBright)\(ANSICode.cursor.move(row: 25-myPoint.y, col: (myPoint.x*2)+2))*")
        print("\(ANSICode.cursor.move(row: 27, col: 25))")
    }
}
