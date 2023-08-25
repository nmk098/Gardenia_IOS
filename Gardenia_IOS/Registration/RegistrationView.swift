//
//  RegistrationView.swift
//  Gardenia_IOS
//
//  Created by Narek Matosyan on 24.08.23.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Регистрация")
            }
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(viewModel: RegistrationViewModel())
    }
}
