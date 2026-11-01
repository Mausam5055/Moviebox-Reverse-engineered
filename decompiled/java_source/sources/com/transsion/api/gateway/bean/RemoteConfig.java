package com.transsion.api.gateway.bean;

import fm.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RemoteConfig {
    public boolean activateGatewayDns;
    public boolean activateTracking;
    public int configVersion;
    public String gatewayHost;

    @a(name = "gatewayIp")
    public List<String> gatewayIp;

    @a(name = "gatewayStrategy")
    public List<GatewayStrategy> gatewayStrategy;
    public long metricsInterval;
    public long refreshInterval;
    public int requestTimeout;
    public boolean useGateway;

    @a(name = "useGatewayHostList")
    public List<GatewayHost> useGatewayHostList;

    public String toString() {
        return "RemoteConfig{useGateway=" + this.useGateway + ", activateGatewayDns=" + this.activateGatewayDns + ", activateTracking=" + this.activateTracking + ", requestTimeout=" + this.requestTimeout + ", configVersion=" + this.configVersion + ", gatewayHost='" + this.gatewayHost + "', gatewayIp=" + this.gatewayIp + ", useGatewayHostList=" + this.useGatewayHostList + ", gatewayStrategy=" + this.gatewayStrategy + ", refreshInterval=" + this.refreshInterval + ", metricsInterval=" + this.metricsInterval + '}';
    }
}
