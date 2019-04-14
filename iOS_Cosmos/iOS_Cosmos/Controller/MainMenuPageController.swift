//
//  MainMenuPageController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-04-13.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class MainMenuPageController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    // The view-controllers inside an array of UIViewControllers
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVC(viewController: "Sun"),
                self.newVC(viewController: "Mercury"),
                self.newVC(viewController: "Venus"),
                self.newVC(viewController: "Earth"),
                self.newVC(viewController: "Mars"),
                self.newVC(viewController: "Jupiter"),
                self.newVC(viewController: "Saturn"),
                self.newVC(viewController: "Uranus"),
                self.newVC(viewController: "Neptune"),
                self.newVC(viewController: "Pluto")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func newVC(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return orderedViewControllers.last
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
            return orderedViewControllers.first
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
}
