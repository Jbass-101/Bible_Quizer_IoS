//
//  Bible_QuizApp.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/11/02.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore
//import FirebaseFirestoreSwift

class AppDelegate: NSObject, UIApplicationDelegate {
    
    private let emulatorIP = "192.168.0.195"
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
#if EMULATORS
      print(
      """
      *********************************
      Testing Firebase on Emulators
      ********************************
      """
      )
      Auth.auth().useEmulator(withHost: emulatorIP, port: 9090)
      let settings = Firestore.firestore().settings
      settings.host = "\(emulatorIP):9091"
      settings.cacheSettings = MemoryCacheSettings()
      settings.isSSLEnabled = false
      Firestore.firestore().settings = settings
#elseif DEBUG
      print(
      """
      *********************************
      Testing Firebase Live
      ********************************
      """
      )
#endif

    return true
  }
}


@main
struct Bible_QuizApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                BackgroundView()
//                HomeScreenView()
                MainNavGraph()
                    
//                AuthRootView()
//                MainScreen()
//                QuizNavGraph()
//                QuizScreen()
                
            }.onAppear{
                Task{
                    let currentUser = try AuthDataService.shared.getAuthUser()
                    print("This is the current user: \(currentUser.id)")
                }
            }
        }
        
        
    }
}
