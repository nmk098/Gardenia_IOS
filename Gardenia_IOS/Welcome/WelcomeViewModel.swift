//
//  WelcomeViewModel.swift
//  Gardenia_IOS
//
//  Created by Narek Matosyan on 23.08.23.
//

import Foundation

class WelcomeViewModel: ObservableObject {
    var router: WelcomeRouter
    
    init(router: WelcomeRouter) {
        self.router = router
    }
    
    func onRegistrationButtonTap() {
        router.showRegistration()
    }
    
    func onLogInButtonTap() {
        router.showLogIn()
    }
}
