//
//  SceneDelegate.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 04/08/2022.
//

import UIKit
import Foundation

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var rootNavigationController: UINavigationController {        
        return UINavigationController(navigationBarClass: UINavigationBar.self, toolbarClass: nil)
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let navigationController = rootNavigationController
        navigationController.navigationBar.isHidden = false
        navigationController.navigationBar.backgroundColor = .white
        navigationController.view.tintColor = .black
        
        let dependencyContainer = DependencyContainer()
        
        setupWindow(windowScene: windowScene,
                    navigationController: navigationController,
                    dependencyContainer: dependencyContainer)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

extension SceneDelegate {
    func setupWindow(windowScene: UIWindowScene, navigationController: UINavigationController, dependencyContainer: DependencyContainerType) {
        window = {
            let flowController = FlowController(dependencyContainer: dependencyContainer,
                                                rootNavigationController: navigationController)
            
            let mainWindow = UIWindow(windowScene: windowScene)
            mainWindow.rootViewController = flowController.rootNavigationController
            self.window = mainWindow
            mainWindow.makeKeyAndVisible()
            
            return mainWindow
        }()
    }
}
