import Foundation

struct CoordinateView {
    
    init() {
        print(ANSICode.clear + ANSICode.text.cyanBright + ANSICode.CoordinateGrid.draw())
    }
    
    //MARK: 비공개 메소드
    private func moveCursorTo(x: Int, y: Int) {
        let defaultColumn = 3
        let defaultRow = ANSICode.CoordinateGrid.gridLimit + 1
        let resultColumn = move(x: defaultColumn, by: x)
        let resultRow = move(y: defaultRow, by: y)
        print(ANSICode.cursor.move(row: resultRow, column: resultColumn), terminator: "")
    }
    
    private func move(x: Int, by rate: Int) -> Int {
        return x + rate * 2
    }
    
    private func move(y: Int, by rate: Int) -> Int {
        return y - rate
    }
    
    //MARK: 메소드
    func draw(point: Point) {
        moveCursorTo(x: point.x, y: point.y)
        print(ANSICode.text.redBright + "●")
    }
    
    
    
}
