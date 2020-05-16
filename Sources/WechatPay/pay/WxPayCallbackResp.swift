//
//  File.swift
//  
//
//  Created by Spec on 2020/5/16.
//

import Vapor

public struct WxPayCallbackResp: Content {
          
    let appid: String
    let mch_id: String
    let device_info: String?
    let nonce_str: String
    public let sign: String
    let sign_type: String?
    let result_code: String
    let err_code: String?
    let err_code_des: String?
    public let openid: String
    let is_subscribe: String
    let trade_type: String
    let bank_type: String
    let total_fee: Int
    let settlement_total_fee: Int?
    let fee_type: String?
    let cash_fee: Int
    let cash_fee_type: String?
    let coupon_fee: Int?
    let coupon_count: Int?
    let transaction_id: String
    let out_trade_no: String
    public let attach: String?
    let time_end: String
    
    public var appId: String { appid }
    public var mchId: String { mch_id }
    public var deviceInfo: String? { device_info }
    public var nonceStr: String { nonce_str }
    public var signType: String? { sign_type }
    public var resultCode: String { result_code }
    public var errCode: String? { err_code }
    public var errCodeDes: String? { err_code_des }
    public var isSubscribe: String { is_subscribe }
    public var tradeType: String { trade_type }
    public var bankType: String { bank_type }
    public var totalFee: Int { total_fee }
    public var settlementTotalFee: Int? { settlement_total_fee }
    public var feeType: String? { fee_type }
    public var cashFee: Int { cash_fee }
    public var cashFeeType: String? { cash_fee_type }
    public var couponFee: Int? { coupon_fee }
    public var couponCount: Int? { coupon_count }
    public var transactionId: String { transaction_id }
    public var outTradeNo: String { out_trade_no }
    public var timeEnd: String { time_end }
    

    let return_code: String
    let return_msg: String?
}

extension WxPayCallbackResp {
    var SUCCESS_KEY: String { "SUCCESS" }
    var FAIL_KEY: String { "FAIL" }
}

extension WxPayCallbackResp {
    
    var isConnectSuccess: Bool {
        return return_code == SUCCESS_KEY
    }
    var isTransactionSuccess: Bool {
        return result_code == SUCCESS_KEY
    }
}