//
//  AppLifecycleViewController.swift
//  SwiftAppLifecycleNotifications
//
//  Created by Erik Valencia Cardona on 9/10/26.
//
import UIKit

final class AppLifecycleViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerAppLifecycleNotifications()
    }
    
    private func registerAppLifecycleNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(appDidEnterBackground),
            name: UIApplication.didEnterBackgroundNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(appWillEnterForeground),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
        
       
    }
    
    @objc private func appDidEnterBackground() {
        print("App entered background")
    }
    
    @objc private func appWillEnterForeground(){
        print("App will enter foreground")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("App lifecycle observer deallocated")
    }
    
    
}
