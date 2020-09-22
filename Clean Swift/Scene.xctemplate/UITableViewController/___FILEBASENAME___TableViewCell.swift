//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___TableViewCell: UITableViewCell {
    
    var data: ___VARIABLE_sceneName___Models.DisplayContent.ViewModel! {
        didSet {
            
        }
    }
    
    // MARK: - UI Element
    
    let cellHeight: CGFloat = 79
    let separatorHeight: CGFloat = 5
    
    private lazy override var backgroundView: UIView? = {
        let view = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0),
                                        size: CGSize(width: self.contentView.frame.width, height: cellHeight)))
        
        return view
    }()
    
    private lazy var separatorView: UIView = {
        let view = UIView(frame: CGRect(origin: CGPoint(x: 0, y: cellHeight),
                                        size: CGSize(width: self.contentView.frame.width, height: separatorHeight)))
        view.backgroundColor = .clear
        
        return view
    }()
    
    private lazy var Label: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupUI() {
        
    }
    
}
