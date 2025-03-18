import SwiftUI

struct RegisterNameView: View {
    @Binding var goToLoginView: Bool
    @State private var name: String = ""

    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                loginImageView()
                    .scaleEffect(1)
                    .opacity(1)
                    .offset(y: 0)
                
                Text("Реєстрація")
                    .font(.largeTitle)
                    .opacity(1)
                    .offset(y: 0)
            }
            
            Spacer()
            
            VStack(spacing: 15) {
                TextField("Email", text: $email)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .frame(height: 60)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .padding(.horizontal, 40)
                
                SecureField("Пароль", text: $password)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .frame(height: 60)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 20)
            
            VStack(spacing: 15) {
                Button(action: {
                    // Додай логіку входу тут
                    print("Вхід: \(email), \(password)")
                }) {
                    RoundedRectangle(cornerRadius: 20).fill(Color.green)
                        .frame(height: 60)
                        .overlay {
                            Text("Увійти").font(.title2).foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                }
                
                Button(action: {
                    goToLoginView = false
                }) {
                    RoundedRectangle(cornerRadius: 20).fill(Color.blue)
                        .frame(height: 60)
                        .overlay {
                            Text("Назад").font(.title2).foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                }
            }
            
            Spacer()
        }
    }
}

