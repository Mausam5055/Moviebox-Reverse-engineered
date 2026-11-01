package com.transsion.api.gateway.bean;

/* JADX INFO: loaded from: classes.dex */
public class GatewayStrategy {
    public long connectTimeout;
    public boolean noDns;
    public long readTimeout;
    public boolean useOriginHost;

    public long getConnectTimeout() {
        return this.connectTimeout;
    }

    public long getReadTimeout() {
        return this.readTimeout;
    }

    public boolean isNoDns() {
        return this.noDns;
    }

    public boolean isUseOriginHost() {
        return this.useOriginHost;
    }

    public String toString() {
        return "GatewayStrategy{useOriginHost=" + this.useOriginHost + ", noDns=" + this.noDns + ", readTimeout=" + this.readTimeout + ", connectTimeout=" + this.connectTimeout + '}';
    }
}
