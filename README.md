# KoinPaymentCheckout iOS

SDK oficial da Koin para integração de pagamentos no seu app iOS. Suporte completo a Pix, Cartão de Crédito e BNPL.

Compatível com **SwiftUI** e **UIKit**.

## 🚧 Status Beta

Este framework está em fase beta. As versões são disponibilizadas através do GitHub Pages como arquivos ZIP para instalação manual.

## 📦 Instalação

### CocoaPods

Adicione ao seu `Podfile`:

```ruby
pod 'KoinPaymentCheckout', :podspec => 'https://koinlatam.github.io/koin-checkout-ios/podspecs/KoinPaymentCheckout-1.0.0-build.2.1.podspec'
```

Em seguida, execute no terminal:

```bash
pod install
```

### Manual

1. Baixe a versão mais recente: [KoinPaymentCheckout-1.0.0-build.2.1.zip](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.1/KoinPaymentCheckout.zip)
2. Extraia o arquivo ZIP
3. Arraste o `KoinPaymentCheckout.xcframework` para o seu projeto no Xcode
4. Em **Target Settings > General > Frameworks, Libraries, and Embedded Content**, certifique-se que está marcado como "Embed & Sign"

## 🚀 Configuração

### 1. Inicialização

Inicialize o SDK no `AppDelegate` ou no `@main` da sua app SwiftUI:

```swift
import KoinPaymentCheckout

PaymentCheckout.initialize(key: "YOUR_PUBLIC_KEY")
```

## 📱 Uso

### SwiftUI

```swift
import SwiftUI
import KoinPaymentCheckout

struct ContentView: View {
    @State private var checkoutInput: CheckoutInput? = nil

    var body: some View {
        VStack {
            Button("Iniciar Pagamento") {
                let input = CheckoutInputBuilder(
                    amount: 250.00,
                    referenceId: "checkout123"
                )
                .withAccount("default_account")
                .withPaymentType(.pix)
                .build()
                
                checkoutInput = input
            }
        }
        .sheet(item: $checkoutInput) { input in
            PaymentCheckout.makeCheckoutView(input: input) { result in
                switch result {
                case .success(let data):
                    print("Pagamento realizado: \(data)")
                case .fail(let error):
                    print("Erro no pagamento: \(error?.localizedDescription ?? "erro desconhecido")")
                case .canceled:
                    print("Pagamento cancelado")
                }
                checkoutInput = nil
            }
        }
    }
}
```

### UIKit

```swift
import UIKit
import KoinPaymentCheckout

class ViewController: UIViewController {
    func startCheckout() {
        let input = CheckoutInputBuilder(
            amount: 123.45,
            referenceId: "checkout456"
        )
        .withAccount("default_account")
        .withPaymentType(.card)
        .build()

        PaymentCheckout.presentCheckout(from: self, input: input) { result in
            switch result {
            case .success(let data):
                print("Pagamento realizado: \(data)")
            case .fail(let error):
                print("Erro no pagamento: \(error?.localizedDescription ?? "erro desconhecido")")
            case .canceled:
                print("Pagamento cancelado")
            }
        }
    }
}
```

## 🔧 Requisitos

- iOS 15.0+
- Swift 5.10+ ou 6.0+
- Xcode 14.0+

## 📋 Tipos de Pagamento Suportados

- **PIX** (`.pix`)
- **Cartão de Crédito** (`.card`)
- **BNPL** (Buy Now, Pay Later)

## 🔐 Configuração da API Key

Para projetos de exemplo, recomendamos usar um arquivo de configuração `.xcconfig`:

1. Crie um arquivo `Config.xcconfig`
2. Adicione sua chave: `API_KEY = your_key_here`
3. Configure no Xcode em **Project Settings > Configurations**

## 📚 Versões Disponíveis

- **1.0.0-beta.1** - [Download](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-beta.1/KoinPaymentCheckout-1.0.0-beta.1.zip)
- **1.0.0-build.2.1** - [Download](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.1/KoinPaymentCheckout-1.0.0-build.2.1.zip)

## 🤝 Suporte

Para dúvidas ou suporte técnico, entre em contato com a equipe de desenvolvimento da Koin.

## 📄 Licença

Copyright (c) 2025 Koin. Todos os direitos reservados.
