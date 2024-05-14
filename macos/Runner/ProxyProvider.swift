//
//  ProxyProvider.swift
//  Runner
//
//  Created by 朝小树 on 2024/5/7.
//

import NetworkExtension

class ProxyProvider: NEAppProxyProvider {

    override func startProxy(options: [String : Any]? = nil, completionHandler: @escaping (Error?) -> Void) {
        let proxySettings = NEProxySettings()

        // 设置 HTTP 和 HTTPS 代理
        let httpProxy = NEProxyServer(address: "127.0.0.1", port: 7890)
        proxySettings.httpEnabled = true
        proxySettings.httpServer = httpProxy
        proxySettings.httpsEnabled = true
        proxySettings.httpsServer = httpProxy

        // 设置 SOCKS 代理
        let socksProxy = NEProxyServer(address: "127.0.0.1", port: 7890)
        proxySettings.autoProxyConfigurationEnabled = false
        proxySettings.exceptionList = ["localhost", "*.local"]
        proxySettings.excludeSimpleHostnames = true
        proxySettings.matchDomains = [""]
        proxySettings.socksProxyServer = socksProxy

        self.proxySettings = proxySettings
        completionHandler(nil)
    }

    override func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void) {
        // 代理停止时清除设置
        self.proxySettings = nil
        completionHandler()
    }
}
