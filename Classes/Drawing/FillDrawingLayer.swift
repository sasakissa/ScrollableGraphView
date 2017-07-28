
import UIKit

internal class FillDrawingLayer : ScrollableGraphViewDrawingLayer {
    
    // Fills are only used with lineplots and we need
    // to know what the line looks like.
    private var lineDrawingLayer: LineDrawingLayer
    private var fillDataType: FillDataType
    
    init(frame: CGRect, fillColor: UIColor, lineDrawingLayer: LineDrawingLayer, fillDataType: FillDataType) {
        
        self.lineDrawingLayer = lineDrawingLayer
        self.fillDataType = fillDataType
        super.init(viewportWidth: frame.size.width, viewportHeight: frame.size.height)
        self.fillColor = fillColor.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updatePath() {
        switch self.fillDataType {
        case .Normal:
            self.path = lineDrawingLayer.createLinePath().cgPath
        case .Past:
            self.path = lineDrawingLayer.createFillPastLinePath().cgPath
        case .Plan:
            self.path = lineDrawingLayer.createFillPlanLinePath().cgPath
        }

    }
}

enum FillDataType {
    case Past
    case Plan
    case Normal
}
