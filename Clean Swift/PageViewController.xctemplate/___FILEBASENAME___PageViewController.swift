//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___PageViewController: UIPageViewController {
    
    weak var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    weak var rootViewController: ___VARIABLE_sceneName___ViewController?  // In order to set interactor to current controller.
    weak var presenter: ___VARIABLE_sceneName___PresentationLogic?
    
    lazy var viewControllerList: [UIViewController] = {
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        
        return [vc1, vc2]
    }()
    
    private lazy var segment: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["", ""])
        segment.selectedSegmentIndex = 0
        segment.addTarget(self, action: #selector(switchSegment), for: .valueChanged)
        
        return segment
    }()
    var currentIndex: Int = 0
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle,
                  navigationOrientation: UIPageViewController.NavigationOrientation,
                  options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(segment)
        for viewController in viewControllerList {
            viewController.interactor = rootViewController?.interactor
            viewController.router = rootViewController?.router
        }
        self.setViewControllers([viewControllerList[currentIndex]], direction: .forward, animated: true, completion: nil)
    }
    
    // MARK: - Action
    
    @objc private func switchSegment(sender: UISegmentedControl) {
        router?.switchSegment(sender: sender)
    }
    
}

