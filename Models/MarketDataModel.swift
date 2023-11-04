//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Назар Горевой on 09.09.2023.
//

import Foundation

//JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON response:
 {
   "data": {
     "active_cryptocurrencies": 9955,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 851,
     "total_market_cap": {
       "btc": 41934842.841502756,
       "eth": 663522451.1343936,
       "ltc": 17280647026.499386,
       "bch": 5651068079.055643,
       "bnb": 5041599907.425128,
       "eos": 1871263152860.9019,
       "xrp": 2153355995323.9717,
       "xlm": 8230832638611.93,
       "link": 174408760499.8612,
       "dot": 254118649309.15417,
       "yfi": 201217729.71830815,
       "usd": 1084003796110.8169,
       "aed": 3981545943115.0312,
       "ars": 379401328638785.75,
       "aud": 1697938018068.546,
       "bdt": 118949798322460.03,
       "bhd": 408654255080.6324,
       "bmd": 1084003796110.8169,
       "brl": 5405493329686.212,
       "cad": 1480694985297.5693,
       "chf": 967645744632.4843,
       "clp": 971343281581018.1,
       "cny": 7959839874841.733,
       "czk": 24716370555122.742,
       "dkk": 7555831660031.213,
       "eur": 1012405345377.6993,
       "gbp": 869637709414.7184,
       "hkd": 8498860762457.816,
       "huf": 390588247814649.56,
       "idr": 16673821190637748,
       "ils": 4166151789592.701,
       "inr": 90021091996011.2,
       "jpy": 160232098834352.44,
       "krw": 1448565112780844,
       "kwd": 334360970910.38135,
       "lkr": 349809946943691.25,
       "mmk": 2275985755606140.5,
       "mxn": 19074672798263.97,
       "myr": 5069343752512.222,
       "ngn": 851484981845048.5,
       "nok": 11577702544361.568,
       "nzd": 1841039527200.7275,
       "php": 61430488621577.266,
       "pkr": 333195666829562.25,
       "pln": 4678072582306.024,
       "rub": 105961373237839.88,
       "sar": 4065899866516.986,
       "sek": 12061927040084.281,
       "sgd": 1479231580172.82,
       "thb": 38519863514057.625,
       "try": 29100080822591.07,
       "twd": 34785573416816.504,
       "uah": 40026272153402.734,
       "vef": 108541300104.57626,
       "vnd": 26079726014560910,
       "zar": 20730933038379.65,
       "xdr": 814842401525.1107,
       "xag": 47271389301.332054,
       "xau": 564841858.0394623,
       "bits": 41934842841502.76,
       "sats": 4193484284150275.5
     },
     "total_volume": {
       "btc": 812749.8587813088,
       "eth": 12859897.44842885,
       "ltc": 334920616.813112,
       "bch": 109524788.26677407,
       "bnb": 97712530.56268266,
       "eos": 36267427279.47382,
       "xrp": 41734740433.39768,
       "xlm": 159523861576.6017,
       "link": 3380260562.850975,
       "dot": 4925138198.808394,
       "yfi": 3899852.016399973,
       "usd": 21009353380.371395,
       "aed": 77167354966.10414,
       "ars": 7353273683129.984,
       "aud": 32908168742.171753,
       "bdt": 2305396306218.2803,
       "bhd": 7920232093.45269,
       "bmd": 21009353380.371395,
       "brl": 104765241566.56023,
       "cad": 28697726249.918285,
       "chf": 18754188379.16892,
       "clp": 18825851283549.363,
       "cny": 154271681872.06723,
       "czk": 479034266425.84827,
       "dkk": 146441495867.20242,
       "eur": 19621685589.597897,
       "gbp": 16854669711.98943,
       "hkd": 164718582840.4565,
       "huf": 7570090210015.421,
       "idr": 323159570890858.56,
       "ils": 80745247846.78136,
       "inr": 1744721688444.8784,
       "jpy": 3105499076080.139,
       "krw": 28075009015724.062,
       "kwd": 6480335050.175553,
       "lkr": 6779755585429.395,
       "mmk": 44111459018666.31,
       "mxn": 369691086757.70483,
       "myr": 98250241083.30656,
       "ngn": 16502847080281.764,
       "nok": 224390398779.05643,
       "nzd": 35681655500.62135,
       "php": 1190599930009.5276,
       "pkr": 6457749995291.655,
       "pln": 90666914980.66154,
       "rub": 2053664334950.0093,
       "sar": 78802239818.10448,
       "sek": 233775276934.06854,
       "sgd": 28669363622.85479,
       "thb": 746563275547.588,
       "try": 563996070486.7164,
       "twd": 674188049040.78,
       "uah": 775759364669.042,
       "vef": 2103666553.9765909,
       "vnd": 505457805469863.7,
       "zar": 401791487881.1081,
       "xdr": 15792667907.964996,
       "xag": 916178823.5207108,
       "xau": 10947343.765910102,
       "bits": 812749858781.3087,
       "sats": 81274985878130.88
     },
     "market_cap_percentage": {
       "btc": 46.45386671324392,
       "eth": 18.11728911356645,
       "usdt": 7.657237468082663,
       "bnb": 3.0515906919826357,
       "xrp": 2.4650840075566065,
       "usdc": 2.4101386222980565,
       "steth": 1.2961286255116091,
       "doge": 0.8256962569479677,
       "ada": 0.8227136213694431,
       "sol": 0.7398682347888725
     },
     "market_cap_change_percentage_24h_usd": 0.35174300948987186,
     "updated_at": 1694258544
   }
 }
 
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { key, value in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
