## About

this is the official SDK of MIPS payment gateway for iOS platform

## Installation

#### 1. Cocoapods

```ruby
pod 'MipsPaymentSdk', :git => 'https://github.com/MIPSIT-DIGITAL/ios-sdk'
```

## Prerequisite (will be provided MIPS Admin)

#### a. Merchant details

1. sIdMerchant
2. id_entity
3. id_operator
4. operator_password

#### b. Merchant credentials

1. username
2. password

## Uses

1. import MIPS_iOS_SDK

```swift
import MipsPaymentSdk
```

2. create merchant detail model

```swift
let merchantDetails: MerchantDetails = .init(
    sIdMerchant: "YOUR_MERCHANT_ID",
    id_entity: "YOUR_ID_ENTITY",
    id_operator: "YOUR_ID_OPERATOR",
    operator_password: "YOUR_OPERATOR_PASSWORD"
)

```

3. create merchant credential model

```swift
 let credential: MerchantCredentials = .init(
    username: "YOUR_USERNAME",
    password: "YOUR_PASSWORD"
)
```

4. take order ID and order amount

```swift
let orderID : String = "YOUR_ORDER_ID"

let amount : Amount = .init(currency: .Mauritian_Rupee, price: 100)
```

5. Create payment page screen

```swift
let paymentPage: MIPSViewController = .init(
    merchantDetails: merchantDetails,
    credentials: credential,
    amount: amount,
    orderID: orderID
)

// To track payment status, conform to `MipsPaymentPageDelegate` and set it as the delegate
paymentPage.delegate = self

```

7. Show payment page and start payment transaction

```swift
self.present(
    paymentPage,
    animated: true
) {
    paymentPage.createPayment()
}
```

8. track payment success callback

```swift


// conform your class to MipsPaymentPageDelegate and set it as delegate of payment page

class ViewController: UIViewController, MipsPaymentPageDelegate {

    func successPayment(
        _ sender: MIPS_iOS_SDK.MIPSViewController,
        orderID: String,
        mode: MIPS_iOS_SDK.PaymentMode
    ) {
        // Payment is completed
        DispatchQueue.main.async {
            sender.dismiss(animated: true) {
                // Handle post-payment flow here
            }
        }
    }
}

}
```

