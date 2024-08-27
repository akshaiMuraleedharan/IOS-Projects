//
//  ViewController.swift
//  Byte Coin
//
//  Created by Subhosting's Mac Mini on 18/09/23.
//

import UIKit

class ByteCoinViewController: UIViewController {
    
//MARK: Outlets and Properties
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var assetView: UIView!
    var currencies: [String] = ["AUD", "BRL","CAD",
                                "CNY","EUR","GBP",
                                "HKD","IDR","ILS",
                                "INR","JPY","MXN",
                                "NOK","NZD","PLN",
                                "RON","RUB","SEK",
                                "SGD","USD","ZAR"]
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assetView.layer.cornerRadius = 33
        coinManager.delegate = self
        createPickerView()
        coinManager.getCoinRate(withCurrencyName: currencyLabel.text!)
    }
}
    
//MARK: - UIPickerViewDelegate and UIPickerViewDataSource
    extension ByteCoinViewController: UIPickerViewDelegate, UIPickerViewDataSource  {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return currencies.count
            
        }
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            return currencies[row]
        }
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            currencyLabel.text = currencies[row]
            coinManager.getCoinRate(withCurrencyName: currencyLabel.text ?? "")
        }
        func createPickerView() {
            pickerView.delegate = self
            pickerView.dataSource = self
        }
    }
//MARK: - CoinManagerDelegate
    extension ByteCoinViewController: CoinManagerDelegate {
        func didGetCoinData(coin: CoinModel) {
            DispatchQueue.main.async {
                self.amountLabel.text = coin.coinRateString
            }
        }
    
        func didFinishWithError(_ error: Error) {
            DispatchQueue.main.async {
                let errorAlert = UIAlertController(title: "Error",
                                                   message: error.localizedDescription,
                                                   preferredStyle: UIAlertController.Style.alert)
                errorAlert.addAction(UIAlertAction(title: "OK",
                                                   style: .default,
                                                   handler: { action in}))
                self.present(errorAlert, animated: true, completion: nil)
        }
    }
}
