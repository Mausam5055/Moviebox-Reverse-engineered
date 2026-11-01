package com.tmc.network.stat;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eg.a;
import eg.b;
import eg.c;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@b(id = "700", name = "connect")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b!\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\b\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\"\u0010#\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001b\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR\"\u0010&\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b&\u0010\u001b\u001a\u0004\b'\u0010\u001d\"\u0004\b(\u0010\u001fR\"\u0010)\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b)\u0010\u001b\u001a\u0004\b*\u0010\u001d\"\u0004\b+\u0010\u001fR\"\u0010,\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001b\u001a\u0004\b-\u0010\u001d\"\u0004\b.\u0010\u001fR\"\u0010/\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b/\u0010\u001b\u001a\u0004\b0\u0010\u001d\"\u0004\b1\u0010\u001fR\"\u00103\u001a\u0002028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b3\u00105\"\u0004\b6\u00107R\"\u00108\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0014\u001a\u0004\b9\u0010\u0016\"\u0004\b:\u0010\u0018R$\u0010;\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b;\u0010\b\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\u000bR\"\u0010>\u001a\u0002028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b>\u00104\u001a\u0004\b>\u00105\"\u0004\b?\u00107R$\u0010@\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b@\u0010\b\u001a\u0004\bA\u0010\u0006\"\u0004\bB\u0010\u000bR$\u0010C\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bC\u0010\b\u001a\u0004\bD\u0010\u0006\"\u0004\bE\u0010\u000bR\"\u0010F\u001a\u0002028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bF\u00104\u001a\u0004\bF\u00105\"\u0004\bG\u00107R\"\u0010H\u001a\u0002028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bH\u00104\u001a\u0004\bH\u00105\"\u0004\bI\u00107R\"\u0010J\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bJ\u0010\u0014\u001a\u0004\bK\u0010\u0016\"\u0004\bL\u0010\u0018R\"\u0010M\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bM\u0010\u0014\u001a\u0004\bN\u0010\u0016\"\u0004\bO\u0010\u0018R$\u0010P\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bP\u0010\b\u001a\u0004\bQ\u0010\u0006\"\u0004\bR\u0010\u000b¨\u0006S"}, d2 = {"Lcom/tmc/network/stat/ConnectStat;", "Leg/c;", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "ip", "Ljava/lang/String;", "getIp", "setIp", "(Ljava/lang/String;)V", "host", "getHost", "setHost", "protocol", "getProtocol", "setProtocol", "", "ret", "I", "getRet", "()I", "setRet", "(I)V", "", "connectStart", "J", "getConnectStart", "()J", "setConnectStart", "(J)V", "connTime", "getConnTime", "setConnTime", "dnsStart", "getDnsStart", "setDnsStart", "dnsTime", "getDnsTime", "setDnsTime", "tcpTime", "getTcpTime", "setTcpTime", "tlsStart", "getTlsStart", "setTlsStart", "tlsTime", "getTlsTime", "setTlsTime", "", "isPinning", "Z", "()Z", "setPinning", "(Z)V", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "getErrCode", "setErrCode", "errMsg", "getErrMsg", "setErrMsg", "isNetworkConnected", "setNetworkConnected", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "getAppName", "setAppName", NetworkBridge.KEY_NETWORK_TYPE, "getNetworkType", "setNetworkType", "isPre", "setPre", "isNetworkImprove", "setNetworkImprove", "step", "getStep", "setStep", "netStatus", "getNetStatus", "setNetStatus", "tlsVersion", "getTlsVersion", "setTlsVersion", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConnectStat extends c {

    @a
    private long connTime;
    private long connectStart;
    private long dnsStart;

    @a
    private long dnsTime;

    @a
    private int errCode;

    @a
    private boolean isNetworkConnected;

    @a
    private boolean isNetworkImprove;

    @a
    private boolean isPinning;

    @a
    private boolean isPre;

    @a
    private int netStatus;

    @a
    private int ret;

    @a
    private long tcpTime;
    private long tlsStart;

    @a
    private long tlsTime;

    @a
    private String ip = "";

    @a
    private String host = "";

    @a
    private String protocol = "";

    @a
    private String errMsg = "";

    @a
    private String appName = "";

    @a
    private String networkType = "";

    @a
    private int step = -1;

    @a
    private String tlsVersion = "";

    public final String getAppName() {
        return this.appName;
    }

    public final long getConnTime() {
        return this.connTime;
    }

    public final long getConnectStart() {
        return this.connectStart;
    }

    public final long getDnsStart() {
        return this.dnsStart;
    }

    public final long getDnsTime() {
        return this.dnsTime;
    }

    public final int getErrCode() {
        return this.errCode;
    }

    public final String getErrMsg() {
        return this.errMsg;
    }

    public final String getHost() {
        return this.host;
    }

    public final String getIp() {
        return this.ip;
    }

    public final int getNetStatus() {
        return this.netStatus;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getProtocol() {
        return this.protocol;
    }

    public final int getRet() {
        return this.ret;
    }

    public final int getStep() {
        return this.step;
    }

    public final long getTcpTime() {
        return this.tcpTime;
    }

    public final long getTlsStart() {
        return this.tlsStart;
    }

    public final long getTlsTime() {
        return this.tlsTime;
    }

    public final String getTlsVersion() {
        return this.tlsVersion;
    }

    /* JADX INFO: renamed from: isNetworkConnected, reason: from getter */
    public final boolean getIsNetworkConnected() {
        return this.isNetworkConnected;
    }

    /* JADX INFO: renamed from: isNetworkImprove, reason: from getter */
    public final boolean getIsNetworkImprove() {
        return this.isNetworkImprove;
    }

    /* JADX INFO: renamed from: isPinning, reason: from getter */
    public final boolean getIsPinning() {
        return this.isPinning;
    }

    /* JADX INFO: renamed from: isPre, reason: from getter */
    public final boolean getIsPre() {
        return this.isPre;
    }

    public final void setAppName(String str) {
        this.appName = str;
    }

    public final void setConnTime(long j11) {
        this.connTime = j11;
    }

    public final void setConnectStart(long j11) {
        this.connectStart = j11;
    }

    public final void setDnsStart(long j11) {
        this.dnsStart = j11;
    }

    public final void setDnsTime(long j11) {
        this.dnsTime = j11;
    }

    public final void setErrCode(int i11) {
        this.errCode = i11;
    }

    public final void setErrMsg(String str) {
        this.errMsg = str;
    }

    public final void setHost(String str) {
        this.host = str;
    }

    public final void setIp(String str) {
        this.ip = str;
    }

    public final void setNetStatus(int i11) {
        this.netStatus = i11;
    }

    public final void setNetworkConnected(boolean z10) {
        this.isNetworkConnected = z10;
    }

    public final void setNetworkImprove(boolean z10) {
        this.isNetworkImprove = z10;
    }

    public final void setNetworkType(String str) {
        this.networkType = str;
    }

    public final void setPinning(boolean z10) {
        this.isPinning = z10;
    }

    public final void setPre(boolean z10) {
        this.isPre = z10;
    }

    public final void setProtocol(String str) {
        this.protocol = str;
    }

    public final void setRet(int i11) {
        this.ret = i11;
    }

    public final void setStep(int i11) {
        this.step = i11;
    }

    public final void setTcpTime(long j11) {
        this.tcpTime = j11;
    }

    public final void setTlsStart(long j11) {
        this.tlsStart = j11;
    }

    public final void setTlsTime(long j11) {
        this.tlsTime = j11;
    }

    public final void setTlsVersion(String str) {
        this.tlsVersion = str;
    }

    public String toString() {
        return "ConnectStat(ip=" + ((Object) this.ip) + ", host=" + ((Object) this.host) + ", protocol=" + ((Object) this.protocol) + ", ret=" + this.ret + ", connTime=" + this.connTime + ", dnsStart=" + this.dnsStart + ", dnsTime=" + this.dnsTime + ", tcpTime=" + this.tcpTime + ", tlsStart=" + this.tlsStart + ", tlsTime=" + this.tlsTime + ", isPinning=" + this.isPinning + ", errCode=" + this.errCode + ", errMsg=" + ((Object) this.errMsg) + ", isNetworkConnected=" + this.isNetworkConnected + ", appName=" + ((Object) this.appName) + ", networkType=" + ((Object) this.networkType) + ", isPre=" + this.isPre + ", isNetworkImprove=" + this.isNetworkImprove + ", step=" + this.step + ", netStatus=" + this.netStatus + ", tlsVersion=" + ((Object) this.tlsVersion) + ')';
    }
}
