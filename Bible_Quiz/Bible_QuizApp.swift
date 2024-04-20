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
      Auth.auth().useEmulator(withHost: "192.168.0.195", port: 9090)
      let settings = Firestore.firestore().settings
      settings.host = "192.168.0.195:9091"
      settings.isPersistenceEnabled = false
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
                AuthRootView()
                
            }
        }
    }
}
