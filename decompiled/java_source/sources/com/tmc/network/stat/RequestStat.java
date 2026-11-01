package com.tmc.network.stat;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eg.a;
import eg.b;
import eg.c;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@b(id = "701", name = "request")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b9\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b3\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\b\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\u000bR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\"\u0010\"\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001bR\"\u0010%\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0017\u001a\u0004\b)\u0010\u0019\"\u0004\b*\u0010\u001bR$\u0010+\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b+\u0010\b\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\u000bR\"\u0010.\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0017\u001a\u0004\b/\u0010\u0019\"\u0004\b0\u0010\u001bR\"\u00101\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0017\u001a\u0004\b2\u0010\u0019\"\u0004\b3\u0010\u001bR\"\u00104\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0017\u001a\u0004\b5\u0010\u0019\"\u0004\b6\u0010\u001bR\"\u00107\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u0017\u001a\u0004\b8\u0010\u0019\"\u0004\b9\u0010\u001bR\"\u0010:\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0017\u001a\u0004\b;\u0010\u0019\"\u0004\b<\u0010\u001bR\"\u0010=\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b=\u0010\u0017\u001a\u0004\b>\u0010\u0019\"\u0004\b?\u0010\u001bR\"\u0010@\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010\u0017\u001a\u0004\bA\u0010\u0019\"\u0004\bB\u0010\u001bR\"\u0010C\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010\u0017\u001a\u0004\bD\u0010\u0019\"\u0004\bE\u0010\u001bR\"\u0010F\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bF\u0010\u0017\u001a\u0004\bG\u0010\u0019\"\u0004\bH\u0010\u001bR\"\u0010I\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bI\u0010\u0017\u001a\u0004\bJ\u0010\u0019\"\u0004\bK\u0010\u001bR\"\u0010L\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bL\u0010\u0017\u001a\u0004\bM\u0010\u0019\"\u0004\bN\u0010\u001bR\"\u0010P\u001a\u00020O8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010W\u001a\u00020V8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bW\u0010Y\"\u0004\bZ\u0010[R\"\u0010\\\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\\\u0010\u0017\u001a\u0004\b]\u0010\u0019\"\u0004\b^\u0010\u001bR\"\u0010_\u001a\u00020O8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b_\u0010Q\u001a\u0004\b`\u0010S\"\u0004\ba\u0010UR\"\u0010b\u001a\u00020O8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bb\u0010Q\u001a\u0004\bc\u0010S\"\u0004\bd\u0010UR$\u0010e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\be\u0010\b\u001a\u0004\bf\u0010\u0006\"\u0004\bg\u0010\u000bR\"\u0010h\u001a\u00020V8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bh\u0010X\u001a\u0004\bh\u0010Y\"\u0004\bi\u0010[R$\u0010j\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bj\u0010\b\u001a\u0004\bk\u0010\u0006\"\u0004\bl\u0010\u000bR$\u0010m\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bm\u0010\b\u001a\u0004\bn\u0010\u0006\"\u0004\bo\u0010\u000bR\"\u0010p\u001a\u00020V8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bp\u0010X\u001a\u0004\bp\u0010Y\"\u0004\bq\u0010[R\"\u0010r\u001a\u00020V8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\br\u0010X\u001a\u0004\br\u0010Y\"\u0004\bs\u0010[R$\u0010t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bt\u0010\b\u001a\u0004\bu\u0010\u0006\"\u0004\bv\u0010\u000bR\"\u0010w\u001a\u00020O8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bw\u0010Q\u001a\u0004\bx\u0010S\"\u0004\by\u0010UR$\u0010z\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bz\u0010\b\u001a\u0004\b{\u0010\u0006\"\u0004\b|\u0010\u000bR$\u0010}\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b}\u0010\b\u001a\u0004\b~\u0010\u0006\"\u0004\b\u007f\u0010\u000bR&\u0010\u0080\u0001\u001a\u00020O8\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010Q\u001a\u0005\b\u0081\u0001\u0010S\"\u0005\b\u0082\u0001\u0010UR(\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0083\u0001\u0010\b\u001a\u0005\b\u0084\u0001\u0010\u0006\"\u0005\b\u0085\u0001\u0010\u000bR(\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0086\u0001\u0010\b\u001a\u0005\b\u0087\u0001\u0010\u0006\"\u0005\b\u0088\u0001\u0010\u000b¨\u0006\u0089\u0001"}, d2 = {"Lcom/tmc/network/stat/RequestStat;", "Leg/c;", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "ip", "Ljava/lang/String;", "getIp", "setIp", "(Ljava/lang/String;)V", "host", "getHost", "setHost", "url", "getUrl", "setUrl", "protocol", "getProtocol", "setProtocol", "", "callStart", "J", "getCallStart", "()J", "setCallStart", "(J)V", "onewayTime", "getOnewayTime", "setOnewayTime", "connWaitTime", "getConnWaitTime", "setConnWaitTime", "dnsTime", "getDnsTime", "setDnsTime", "tcpTime", "getTcpTime", "setTcpTime", "tlsTime", "getTlsTime", "setTlsTime", "tlsVersion", "getTlsVersion", "setTlsVersion", "reqHeaderStart", "getReqHeaderStart", "setReqHeaderStart", "reqHeaderTime", "getReqHeaderTime", "setReqHeaderTime", "reqBodyStart", "getReqBodyStart", "setReqBodyStart", "reqBodyTime", "getReqBodyTime", "setReqBodyTime", "resHeaderStart", "getResHeaderStart", "setResHeaderStart", "resHeaderTime", "getResHeaderTime", "setResHeaderTime", "resBodyStart", "getResBodyStart", "setResBodyStart", "sendDataEnd", "getSendDataEnd", "setSendDataEnd", "sendDataTime", "getSendDataTime", "setSendDataTime", "recvDataTime", "getRecvDataTime", "setRecvDataTime", "firstDataTime", "getFirstDataTime", "setFirstDataTime", "", "ret", "I", "getRet", "()I", "setRet", "(I)V", "", "isPinning", "Z", "()Z", "setPinning", "(Z)V", "recvBodySize", "getRecvBodySize", "setRecvBodySize", "connRet", "getConnRet", "setConnRet", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "getErrCode", "setErrCode", "errMsg", "getErrMsg", "setErrMsg", "isNetworkConnected", "setNetworkConnected", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "getAppName", "setAppName", NetworkBridge.KEY_NETWORK_TYPE, "getNetworkType", "setNetworkType", "isPre", "setPre", "isNetworkImprove", "setNetworkImprove", UrlKt.KEY_HEADER_REQUESTCHANNEL, "getRequestChannel", "setRequestChannel", "step", "getStep", "setStep", "xCache", "getXCache", "setXCache", "eagleId", "getEagleId", "setEagleId", "netStatus", "getNetStatus", "setNetStatus", "requestSrc", "getRequestSrc", "setRequestSrc", "requestLLID", "getRequestLLID", "setRequestLLID", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestStat extends c {
    private long callStart;

    @a
    private int connRet;

    @a
    private long connWaitTime;

    @a
    private long dnsTime;

    @a
    private int errCode;

    @a
    private long firstDataTime;

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
    private long onewayTime;

    @a
    private long recvBodySize;

    @a
    private long recvDataTime;
    private long reqBodyStart;
    private long reqBodyTime;
    private long reqHeaderStart;

    @a
    private long reqHeaderTime;
    private long resBodyStart;
    private long resHeaderStart;

    @a
    private long resHeaderTime;

    @a
    private int ret;
    private long sendDataEnd;

    @a
    private long sendDataTime;

    @a
    private long tcpTime;

    @a
    private long tlsTime;

    @a
    private String ip = "";

    @a
    private String host = "";

    @a
    private String url = "";

    @a
    private String protocol = "";

    @a
    private String tlsVersion = "";

    @a
    private String errMsg = "";

    @a
    private String appName = "";

    @a
    private String networkType = "";

    @a
    private String requestChannel = "";

    @a
    private int step = -1;

    @a
    private String xCache = "";

    @a
    private String eagleId = "";

    @a
    private String requestSrc = "";

    @a
    private String requestLLID = "";

    public final String getAppName() {
        return this.appName;
    }

    public final long getCallStart() {
        return this.callStart;
    }

    public final int getConnRet() {
        return this.connRet;
    }

    public final long getConnWaitTime() {
        return this.connWaitTime;
    }

    public final long getDnsTime() {
        return this.dnsTime;
    }

    public final String getEagleId() {
        return this.eagleId;
    }

    public final int getErrCode() {
        return this.errCode;
    }

    public final String getErrMsg() {
        return this.errMsg;
    }

    public final long getFirstDataTime() {
        return this.firstDataTime;
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

    public final long getOnewayTime() {
        return this.onewayTime;
    }

    public final String getProtocol() {
        return this.protocol;
    }

    public final long getRecvBodySize() {
        return this.recvBodySize;
    }

    public final long getRecvDataTime() {
        return this.recvDataTime;
    }

    public final long getReqBodyStart() {
        return this.reqBodyStart;
    }

    public final long getReqBodyTime() {
        return this.reqBodyTime;
    }

    public final long getReqHeaderStart() {
        return this.reqHeaderStart;
    }

    public final long getReqHeaderTime() {
        return this.reqHeaderTime;
    }

    public final String getRequestChannel() {
        return this.requestChannel;
    }

    public final String getRequestLLID() {
        return this.requestLLID;
    }

    public final String getRequestSrc() {
        return this.requestSrc;
    }

    public final long getResBodyStart() {
        return this.resBodyStart;
    }

    public final long getResHeaderStart() {
        return this.resHeaderStart;
    }

    public final long getResHeaderTime() {
        return this.resHeaderTime;
    }

    public final int getRet() {
        return this.ret;
    }

    public final long getSendDataEnd() {
        return this.sendDataEnd;
    }

    public final long getSendDataTime() {
        return this.sendDataTime;
    }

    public final int getStep() {
        return this.step;
    }

    public final long getTcpTime() {
        return this.tcpTime;
    }

    public final long getTlsTime() {
        return this.tlsTime;
    }

    public final String getTlsVersion() {
        return this.tlsVersion;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getXCache() {
        return this.xCache;
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

    public final void setCallStart(long j11) {
        this.callStart = j11;
    }

    public final void setConnRet(int i11) {
        this.connRet = i11;
    }

    public final void setConnWaitTime(long j11) {
        this.connWaitTime = j11;
    }

    public final void setDnsTime(long j11) {
        this.dnsTime = j11;
    }

    public final void setEagleId(String str) {
        this.eagleId = str;
    }

    public final void setErrCode(int i11) {
        this.errCode = i11;
    }

    public final void setErrMsg(String str) {
        this.errMsg = str;
    }

    public final void setFirstDataTime(long j11) {
        this.firstDataTime = j11;
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

    public final void setOnewayTime(long j11) {
        this.onewayTime = j11;
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

    public final void setRecvBodySize(long j11) {
        this.recvBodySize = j11;
    }

    public final void setRecvDataTime(long j11) {
        this.recvDataTime = j11;
    }

    public final void setReqBodyStart(long j11) {
        this.reqBodyStart = j11;
    }

    public final void setReqBodyTime(long j11) {
        this.reqBodyTime = j11;
    }

    public final void setReqHeaderStart(long j11) {
        this.reqHeaderStart = j11;
    }

    public final void setReqHeaderTime(long j11) {
        this.reqHeaderTime = j11;
    }

    public final void setRequestChannel(String str) {
        this.requestChannel = str;
    }

    public final void setRequestLLID(String str) {
        this.requestLLID = str;
    }

    public final void setRequestSrc(String str) {
        this.requestSrc = str;
    }

    public final void setResBodyStart(long j11) {
        this.resBodyStart = j11;
    }

    public final void setResHeaderStart(long j11) {
        this.resHeaderStart = j11;
    }

    public final void setResHeaderTime(long j11) {
        this.resHeaderTime = j11;
    }

    public final void setRet(int i11) {
        this.ret = i11;
    }

    public final void setSendDataEnd(long j11) {
        this.sendDataEnd = j11;
    }

    public final void setSendDataTime(long j11) {
        this.sendDataTime = j11;
    }

    public final void setStep(int i11) {
        this.step = i11;
    }

    public final void setTcpTime(long j11) {
        this.tcpTime = j11;
    }

    public final void setTlsTime(long j11) {
        this.tlsTime = j11;
    }

    public final void setTlsVersion(String str) {
        this.tlsVersion = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setXCache(String str) {
        this.xCache = str;
    }

    public String toString() {
        return "RequestStat(ip=" + ((Object) this.ip) + ", host=" + ((Object) this.host) + ", url=" + ((Object) this.url) + ", protocol=" + ((Object) this.protocol) + ", onewayTime=" + this.onewayTime + ", connWaitTime=" + this.connWaitTime + ", dnsTime=" + this.dnsTime + ", tcpTime=" + this.tcpTime + ", tlsTime=" + this.tlsTime + ", tlsVersion=" + ((Object) this.tlsVersion) + ", reqHeaderTime=" + this.reqHeaderTime + ", reqBodyTime=" + this.reqBodyTime + ", resHeaderTime=" + this.resHeaderTime + ", sendDataTime=" + this.sendDataTime + ", recvDataTime=" + this.recvDataTime + ", firstDataTime=" + this.firstDataTime + ", ret=" + this.ret + ", isPinning=" + this.isPinning + ", recvBodySize=" + this.recvBodySize + ", connRet=" + this.connRet + ", errCode=" + this.errCode + ", errMsg=" + ((Object) this.errMsg) + ", isNetworkConnected=" + this.isNetworkConnected + ", appName=" + ((Object) this.appName) + ", networkType=" + ((Object) this.networkType) + ", isPre=" + this.isPre + ", isNetworkImprove=" + this.isNetworkImprove + ", requestChannel=" + ((Object) this.requestChannel) + ", step=" + this.step + ", xCache=" + ((Object) this.xCache) + ", eagleId=" + ((Object) this.eagleId) + ", netStatus=" + this.netStatus + ", requestSrc=" + ((Object) this.requestSrc) + ", requestLLID=" + ((Object) this.requestLLID) + ')';
    }
}
