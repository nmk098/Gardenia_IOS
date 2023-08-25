//
//  WelcomeView.swift
//  Gardenia_IOS
//
//  Created by Narek Matosyan on 23.08.23.
//

import SwiftUI

struct WelcomeView: View {
    
    @StateObject var viewModel: WelcomeViewModel
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            VStack(spacing: Constants.spacingVStack) {
                Text(Constants.appNameText)
                    .font(Fonts.header)
                Text(Constants.welcomeText)
                    .font(Fonts.subheader)
                    .frame(maxWidth: UIScreen.main.bounds.width - Constants.welcomeHorizontalInset * 2)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            Button {
                viewModel.onRegistrationButtonTap()
            } label: {
                Text(Constants.RegistrationButton.title)
                        .font(Fonts.buttonTitleSemibold)
                        .frame(
                            maxWidth: UIScreen.main.bounds.width - Constants.RegistrationButton.horizontalInset * 2,
                            minHeight: Constants.RegistrationButton.height
                        )

            }
            .foregroundColor(.white)
            
            .background(.black)
            .cornerRadius(Constants.RegistrationButton.cornerRadius)
            .padding(.bottom, Constants.RegistrationButton.bottomPadding)
            
            Text(Constants.alreadyRegisteredText)
                .padding(.bottom, Constants.alreadyRegisteredBottomPadding)
                .font(Fonts.buttonTitleRegular)
            
            Button {
                viewModel.onLogInButtonTap()
            } label: {
                Text(Constants.signInText)
                    .font(Fonts.buttonTitleSemibold)
            }
            .foregroundColor(.black)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(viewModel: WelcomeViewModel(router: WelcomeRouter()))
    }
}

extension WelcomeView {
    enum Constants {
        static let spacingVStack: CGFloat = 5
        static let appNameText = "Gardenia"
        static let welcomeText = "Добро пожаловать"
        
        enum RegistrationButton {
            static let cornerRadius: CGFloat = 10
            static let bottomPadding: CGFloat = 25
            static let title = "Регистрация"
            static let horizontalInset: CGFloat = 20
            static let height: CGFloat = 51
        }
        static let alreadyRegisteredBottomPadding: CGFloat = 13
        static let alreadyRegisteredText = "Вы уже зарегистрированы?"
        static let signInText = "Войти"
        static let welcomeHorizontalInset: CGFloat = 24
    }
}
