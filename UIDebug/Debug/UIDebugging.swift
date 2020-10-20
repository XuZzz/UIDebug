//
//  UIDebugging.swift
//  UIDebugging
//
//  Created by Xu on 2020/10/20.
//

import SwiftUI

protocol UIDebugLoadNibAble: UIView {}

extension UIDebugLoadNibAble {
    static func loadFromNib()-> Self? {
        return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.first as? Self
    }
}

protocol UIDebugable: UIView {
    var debugPosition: (x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {get set}
    func makeUIDebug()-> UIView
}


extension UIDebugable where Self : UIDebugLoadNibAble {
    
    var debugPosition: (x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        get {
            (self.frame.origin.x,
             self.frame.origin.y,
             self.frame.size.width,
             self.frame.size.height)
        }
        set {
            self.frame = CGRect(x: newValue.x,
                                y: newValue.y,
                                width: newValue.width,
                                height: newValue.height)
        }
    }
    
    func makeUIDebug()-> UIView {
        
        if let v = Self.loadFromNib() {
            return v
        }
        
        let v = Self.init(frame: .zero)
        return v
    }
}

extension UIView: UIDebugable, UIDebugLoadNibAble {}

struct CustomView: UIViewRepresentable {
    
    @Binding var text: String
    func makeUIView(context: Context) -> CustomUIView {
        let view = CustomUIView()
        let label = UILabel()
        label.backgroundColor = .orange
        label.text = "Hello OKOK "
        label.debugPosition = (50, 100, 200, 66)
        label.textAlignment = .center
        view.debugView = label
        return view
    }
    
    func updateUIView(_ uiView: CustomUIView, context: Context) {
    }
}

