//
//  CoinModel.swift
//  Byte Coin
//
//  Created by Subhosting's Mac Mini on 19/09/23.
//

import UIKit

protocol CoinManagerDelegate {
    func didGetCoinData(coin: CoinModel)
    func didFinishWithError(_ error: Error)
}

struct CoinManager {
    var baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    var delegate: CoinManagerDelegate?
    
    
    func getCoinRate(withCurrencyName currency: String) {
        let APIKEY: String = "F77230C2-74AB-4583-A7F5-2F34F53D785E"
        let fullURL: String = "\(baseURL)/\(currency)?apikey=\(APIKEY)"
        performRequest(with: fullURL)
        print(fullURL)
    }
    
    func performRequest(with mainURL: String) {
        if let url = URL(string: mainURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { apiData, apiResponse, apiError in
                if apiError != nil {
                    delegate?.didFinishWithError( apiError!)
                    return
                }
                if let safeData = apiData {
                    if let coinModel = self.parseJSON(safeData) {
                        delegate?.didGetCoinData(coin: coinModel)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ apidata: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            let parsedObject = try decoder.decode(CoinData.self, from: apidata)
            let currency = parsedObject.asset_id_quote
            let rate = parsedObject.rate
            let coinModel = CoinModel(coinAssetId: currency, coinRate: rate)
            return coinModel
        } catch {
            delegate?.didFinishWithError( error)
            return nil
        }
    }
    
}
