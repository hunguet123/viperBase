//
//  GoogleLogin.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

enum CallFirebaseLoginState {
    case Success
    case Error
}

enum LoginState {
    case isLogin
    case isLogout
}

class GoogleLogin {
    static let shared = GoogleLogin()
    
    func signIn(withPresenting viewController: UIViewController, completion: @escaping (_ state: CallFirebaseLoginState) -> Void ) {
        guard let clientID = FirebaseApp.app()?.options.clientID else {
            return
        }
        
        GIDSignIn.sharedInstance.signIn(with: GIDConfiguration(clientID: clientID), presenting: viewController) { result, error in
            guard error == nil else {
                print("failed to sign in with error \(error?.localizedDescription)")
                return
            }
            
            guard let user = result?.authentication, let idToken = user.idToken else {
                print("failed to get idToken")
                return
            }
            
            print("accessToken: \(user.accessToken)")
            
            let credential = GoogleAuthProvider
                .credential(withIDToken: idToken,
                            accessToken: user.accessToken)
            
            Auth.auth().signIn(with: credential) { result, error in
                if error == nil {
                    completion(CallFirebaseLoginState.Success)
                } else {
                    completion(CallFirebaseLoginState.Error)
                }
            }
        }
    }
    
    func checkUserLoginStatus()-> LoginState {
        if Auth.auth().currentUser != nil {
            return .isLogin
        }
        return .isLogout
    }
    
    func logOut(completion: @escaping () -> Void) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            completion()
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
}
