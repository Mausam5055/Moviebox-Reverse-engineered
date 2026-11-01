package cg;

import com.cloud.tmc.integration.net.UrlKt;
import com.tmc.monitor.AppMonitor;
import com.tmc.network.NetworkConfig;
import com.tmc.network.NetworkMonitor;
import com.tmc.network.stat.ConnectStat;
import com.tmc.network.stat.RequestStat;
import com.tmc.network.strategy.LocalDnsStrategy;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends EventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f17229c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final EventListener.Factory f17230d = new EventListener.Factory() { // from class: cg.a
        @Override // okhttp3.EventListener.Factory
        public final EventListener create(Call call) {
            return b.c(call);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RequestStat f17231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConnectStat f17232b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EventListener.Factory a() {
            return b.f17230d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public b(RequestStat requestStat, ConnectStat connectStat) {
        Intrinsics.h(requestStat, "requestStat");
        Intrinsics.h(connectStat, "connectStat");
        this.f17231a = requestStat;
        this.f17232b = connectStat;
        NetworkMonitor networkMonitor = NetworkMonitor.INSTANCE;
        connectStat.setNetworkConnected(networkMonitor.isConnected());
        this.f17232b.setNetStatus(networkMonitor.getNetworkStatus());
        this.f17231a.setNetStatus(this.f17232b.getNetStatus());
        this.f17231a.setNetworkConnected(this.f17232b.getIsNetworkConnected());
        ConnectStat connectStat2 = this.f17232b;
        NetworkConfig networkConfig = NetworkConfig.INSTANCE;
        connectStat2.setAppName(networkConfig.getPackageName());
        this.f17231a.setAppName(networkConfig.getPackageName());
        this.f17231a.setNetworkType(networkMonitor.getNetworkType());
        this.f17232b.setNetworkType(networkMonitor.getNetworkType());
        this.f17231a.setNetworkImprove(networkConfig.isNetworkImproveEnable());
        this.f17232b.setNetworkImprove(networkConfig.isNetworkImproveEnable());
    }

    public /* synthetic */ b(RequestStat requestStat, ConnectStat connectStat, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new RequestStat() : requestStat, (i11 & 2) != 0 ? new ConnectStat() : connectStat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final EventListener c(Call it) {
        Intrinsics.h(it, "it");
        return new b(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        Intrinsics.h(call, "call");
        super.callEnd(call);
        this.f17231a.setOnewayTime(System.currentTimeMillis() - this.f17231a.getCallStart());
        this.f17232b.setStep(10);
        this.f17231a.setStep(10);
        if (this.f17231a.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f17231a);
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.callFailed(call, ioe);
        this.f17231a.setOnewayTime(System.currentTimeMillis() - this.f17231a.getCallStart());
        this.f17231a.setRet(0);
        this.f17231a.setConnRet(this.f17232b.getRet());
        this.f17231a.setErrMsg(ioe.getMessage());
        this.f17232b.setStep(this.f17231a.getStep());
        if (ioe instanceof UnknownHostException) {
            this.f17231a.setErrCode(-399);
            this.f17232b.setDnsTime(System.currentTimeMillis() - this.f17232b.getDnsStart());
            if (!this.f17232b.getIsPre()) {
                AppMonitor.d().c(this.f17232b);
            }
        } else if (ioe instanceof SSLException) {
            this.f17231a.setErrCode(-402);
        } else if (ioe instanceof ConnectException) {
            this.f17231a.setErrCode(-400);
        } else {
            this.f17231a.setErrCode(-406);
            if (Intrinsics.c(this.f17231a.getErrMsg(), "Canceled")) {
                this.f17231a.setRet(2);
            }
        }
        if (this.f17231a.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f17231a);
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        Intrinsics.h(call, "call");
        super.callStart(call);
        this.f17231a.setUrl(call.request().url().getUrl());
        this.f17232b.setHost(call.request().url().host());
        this.f17231a.setHost(this.f17232b.getHost());
        this.f17231a.setCallStart(System.currentTimeMillis());
        if (Intrinsics.c(call.request().header("isPre"), "true")) {
            this.f17231a.setPre(true);
            this.f17232b.setPre(true);
        }
        this.f17231a.setRequestChannel(call.request().header(UrlKt.KEY_HEADER_REQUESTCHANNEL));
        this.f17232b.setStep(0);
        this.f17231a.setStep(0);
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        Intrinsics.h(call, "call");
        super.canceled(call);
        this.f17231a.setOnewayTime(System.currentTimeMillis() - this.f17231a.getCallStart());
        this.f17231a.setRet(2);
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        ConnectStat connectStat = this.f17232b;
        InetAddress address = inetSocketAddress.getAddress();
        connectStat.setIp(address == null ? null : address.getHostAddress());
        this.f17232b.setProtocol(protocol != null ? protocol.name() : null);
        this.f17232b.setRet(1);
        this.f17232b.setConnTime(System.currentTimeMillis() - this.f17232b.getConnectStart());
        this.f17231a.setConnWaitTime(this.f17232b.getConnTime());
        ConnectStat connectStat2 = this.f17232b;
        connectStat2.setTcpTime(connectStat2.getConnTime() - this.f17232b.getTlsTime());
        this.f17231a.setTcpTime(this.f17232b.getTcpTime());
        this.f17232b.setStep(this.f17231a.getStep());
        if (this.f17232b.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f17232b);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        Intrinsics.h(ioe, "ioe");
        super.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        this.f17232b.setConnTime(System.currentTimeMillis() - this.f17232b.getConnectStart());
        this.f17231a.setConnWaitTime(this.f17232b.getConnTime());
        this.f17232b.setRet(0);
        this.f17232b.setErrMsg(ioe.getMessage());
        if (ioe instanceof SSLPeerUnverifiedException) {
            this.f17232b.setErrCode(-402);
            String message = ioe.getMessage();
            if (message != null && StringsKt.a0(message, "Certificate pinning failure!", true)) {
                this.f17232b.setPinning(true);
                this.f17231a.setPinning(true);
            }
        } else if (ioe instanceof SSLException) {
            this.f17232b.setErrCode(-402);
        } else if (ioe instanceof ConnectException) {
            this.f17232b.setErrCode(-400);
        } else {
            this.f17232b.setErrCode(-406);
        }
        this.f17232b.setStep(this.f17231a.getStep());
        if (!this.f17232b.getIsPre()) {
            AppMonitor.d().c(this.f17232b);
        }
        LocalDnsStrategy localDnsStrategyA = LocalDnsStrategy.f40804c.a();
        String hostName = inetSocketAddress.getHostName();
        Intrinsics.g(hostName, "inetSocketAddress.hostName");
        InetAddress address = inetSocketAddress.getAddress();
        Intrinsics.g(address, "inetSocketAddress.address");
        localDnsStrategyA.i(hostName, address);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectStart(call, inetSocketAddress, proxy);
        this.f17232b.setConnectStart(System.currentTimeMillis());
        this.f17232b.setStep(2);
        this.f17231a.setStep(2);
        this.f17232b.setIp(inetSocketAddress.getAddress().getHostAddress());
        this.f17231a.setIp(this.f17232b.getIp());
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        TlsVersion tlsVersion;
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionAcquired(call, connection);
        this.f17231a.setConnRet(1);
        this.f17231a.setIp(connection.getRoute().socketAddress().getAddress().getHostAddress());
        this.f17231a.setProtocol(connection.protocol().name());
        CertificatePinner certificatePinner = connection.getRoute().address().certificatePinner();
        List<CertificatePinner.Pin> listFindMatchingPins = certificatePinner == null ? null : certificatePinner.findMatchingPins(connection.getRoute().address().url().host());
        if (listFindMatchingPins != null && !listFindMatchingPins.isEmpty()) {
            this.f17232b.setPinning(true);
            this.f17231a.setPinning(true);
        }
        RequestStat requestStat = this.f17231a;
        Handshake handshake = connection.getHandshake();
        String str = "";
        if (handshake != null && (tlsVersion = handshake.tlsVersion()) != null && (strName = tlsVersion.name()) != null) {
            str = strName;
        }
        requestStat.setTlsVersion(str);
        this.f17232b.setTlsVersion(this.f17231a.getTlsVersion());
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String domainName, List inetAddressList) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        Intrinsics.h(inetAddressList, "inetAddressList");
        super.dnsEnd(call, domainName, inetAddressList);
        this.f17232b.setDnsTime(System.currentTimeMillis() - this.f17232b.getDnsStart());
        this.f17231a.setDnsTime(this.f17232b.getDnsTime());
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        super.dnsStart(call, domainName);
        this.f17232b.setDnsStart(System.currentTimeMillis());
        this.f17232b.setStep(1);
        this.f17231a.setStep(1);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j11) {
        Intrinsics.h(call, "call");
        super.requestBodyEnd(call, j11);
        this.f17231a.setReqBodyTime(System.currentTimeMillis() - this.f17231a.getReqBodyStart());
        this.f17231a.setSendDataEnd(System.currentTimeMillis());
        this.f17231a.setSendDataTime(System.currentTimeMillis() - this.f17231a.getReqHeaderStart());
        this.f17232b.setStep(6);
        this.f17231a.setStep(6);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestBodyStart(call);
        this.f17231a.setReqBodyStart(System.currentTimeMillis());
        this.f17232b.setStep(5);
        this.f17231a.setStep(5);
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.requestFailed(call, ioe);
        this.f17231a.setRet(0);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.h(call, "call");
        Intrinsics.h(request, "request");
        super.requestHeadersEnd(call, request);
        this.f17231a.setReqHeaderTime(System.currentTimeMillis() - this.f17231a.getReqHeaderStart());
        this.f17231a.setSendDataEnd(System.currentTimeMillis());
        RequestStat requestStat = this.f17231a;
        requestStat.setSendDataTime(requestStat.getReqHeaderTime());
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestHeadersStart(call);
        this.f17231a.setReqHeaderStart(System.currentTimeMillis());
        this.f17232b.setStep(4);
        this.f17231a.setStep(4);
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j11) {
        Intrinsics.h(call, "call");
        super.responseBodyEnd(call, j11);
        this.f17231a.setRecvBodySize(j11);
        this.f17231a.setRecvDataTime(System.currentTimeMillis() - this.f17231a.getSendDataEnd());
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseBodyStart(call);
        this.f17232b.setStep(8);
        this.f17231a.setStep(8);
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.responseFailed(call, ioe);
        this.f17231a.setRet(0);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        super.responseHeadersEnd(call, response);
        this.f17231a.setResHeaderTime(System.currentTimeMillis() - this.f17231a.getResHeaderStart());
        String strHeader$default = Response.header$default(response, "X-Cache", null, 2, null);
        this.f17231a.setXCache("miss");
        if (strHeader$default != null && StringsKt.a0(strHeader$default, "hit", true)) {
            this.f17231a.setXCache("hit");
        }
        this.f17231a.setRequestSrc(Response.header$default(response, "x-request-cdn", null, 2, null));
        this.f17231a.setRequestLLID(Response.header$default(response, "X-LLID", null, 2, null));
        this.f17231a.setEagleId(Response.header$default(response, "EagleId", null, 2, null));
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseHeadersStart(call);
        this.f17231a.setRet(1);
        this.f17231a.setFirstDataTime(System.currentTimeMillis() - this.f17231a.getSendDataEnd());
        this.f17231a.setResHeaderStart(System.currentTimeMillis());
        this.f17232b.setStep(7);
        this.f17231a.setStep(7);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        Intrinsics.h(call, "call");
        super.secureConnectEnd(call, handshake);
        this.f17232b.setTlsTime(System.currentTimeMillis() - this.f17232b.getTlsStart());
        this.f17231a.setTlsTime(this.f17232b.getTlsTime());
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        Intrinsics.h(call, "call");
        super.secureConnectStart(call);
        this.f17232b.setTlsStart(System.currentTimeMillis());
        this.f17232b.setStep(3);
        this.f17231a.setStep(3);
    }
}
