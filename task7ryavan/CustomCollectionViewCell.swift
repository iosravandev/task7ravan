//
//  CustomCollectioViewCell.swift
//  task7ryavan
//
//  Created by Ravan on 26.08.24.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    //@IBOutlet weak var productPriceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
/*    private func setup() {
        guard let view = Bundle.main.loadNibNamed("CustomCollectionViewCell", owner: self)?.first as? UIView else {return}
        addSubview(view)
        view.frame = bounds
        backgroundColor = .clear
        productPriceLabel.strikeText(strike: "US $600.00")
    }

    
    func strikeText(strike : String) -> NSMutableAttributedString {

    let attributeString = NSMutableAttributedString(string: strike)
    attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
    value: NSUnderlineStyle.single.rawValue,
    range: NSMakeRange(0, attributeString.length))

    return attributeString
    }
*/
}
