package bi;

import android.os.SystemClock;
import androidx.core.view.PointerIconCompat;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends EventListener implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EventListener f16504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f16505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f16506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f16507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f16508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f16509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f16510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f16511h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f16512i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f16513j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f16514k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f16515l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f16516m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f16517n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f16518o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f16519p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f16520q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f16521r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f16522s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f16523t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f16524u;

    public f(EventListener eventListener, int i11, boolean z10, String str, boolean z11, String str2, boolean z12, boolean z13) {
        this.f16504a = eventListener;
        this.f16505b = i11;
        this.f16506c = z10;
        this.f16507d = str2;
        this.f16508e = z12;
        this.f16509f = z13;
        this.f16518o = e.J.a(i11, str);
        this.f16519p = z10 || z11;
        this.f16521r = 480;
        this.f16522s = 480;
        this.f16523t = "Unknown";
        this.f16524u = RangesKt.q(new IntRange(1, 10), Random.INSTANCE);
    }

    private final boolean b() {
        k kVar = k.f16534a;
        return kVar.f() || SystemClock.uptimeMillis() - kVar.b() > 3000;
    }

    @Override // bi.i
    public void a(Request request, int i11) {
        Intrinsics.h(request, "request");
        c.c("[onDowngrade]");
        if (!this.f16506c) {
            this.f16519p = false;
        }
        this.f16518o.d0(i11);
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        Intrinsics.h(call, "call");
        super.callEnd(call);
        c.c("[callEnd]");
        e eVar = this.f16518o;
        eVar.I(1);
        eVar.c0(c.e(this.f16510g));
        eVar.S(this.f16521r);
        if (eVar.m() != 304 && !this.f16519p) {
            c.g(eVar);
        }
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.callEnd(call);
        }
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.callFailed(call, ioe);
        c.b("[callFailed]  " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        this.f16518o.I(2);
        if (b()) {
            k kVar = k.f16534a;
            if (!kVar.g()) {
                this.f16522s = PointerIconCompat.TYPE_GRAB;
                this.f16523t = "Network disconnect";
            } else if (kVar.e()) {
                this.f16522s = PointerIconCompat.TYPE_GRABBING;
                this.f16523t = "Fake Network";
            } else {
                this.f16522s = a.f16472a.a(this.f16521r, ioe);
            }
        } else {
            this.f16522s = a.f16472a.a(this.f16521r, ioe);
        }
        this.f16518o.S(this.f16522s);
        this.f16518o.T(Intrinsics.c(this.f16523t, "Unknown") ? c.f(ioe) : this.f16523t);
        if (!this.f16519p) {
            if ((this.f16509f && this.f16522s == 1020) ? false : (this.f16508e && this.f16522s == 1050) ? false : true) {
                c.g(this.f16518o);
            }
        }
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.callFailed(call, ioe);
        }
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        Intrinsics.h(call, "call");
        super.callStart(call);
        c.c("[callStart]");
        try {
            String str = call.request().headers().get("isDownload");
            if (str != null) {
                this.f16518o.l0((Intrinsics.c(str, "true") || Intrinsics.c(str, "T")) ? 1 : 0);
            }
            String str2 = call.request().headers().get("offlineAd");
            if (str2 != null) {
                this.f16518o.X(Integer.parseInt(str2));
            }
            String strHost = call.request().url().host();
            String strEncodedPath = call.request().url().encodedPath();
            e eVar = this.f16518o;
            String str3 = "";
            if (strEncodedPath == null) {
                strEncodedPath = "";
            }
            eVar.Y(strEncodedPath);
            e eVar2 = this.f16518o;
            if (strHost == null) {
                strHost = "";
            }
            eVar2.U(strHost);
            String url = call.request().url().getUrl();
            Intrinsics.g(url, "call.request().url().toString()");
            this.f16518o.P(this.f16524u <= 2 ? url : "");
            e eVar3 = this.f16518o;
            if (this.f16505b == 0 && StringsKt.c0(url, UrlUtils.QUESTION_MARK, false, 2, null)) {
                url = url.substring(0, StringsKt.o0(url, UrlUtils.QUESTION_MARK, 0, false, 6, null));
                Intrinsics.g(url, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            eVar3.g0(url);
            String str4 = call.request().headers().get("infoeyes-tag");
            e eVar4 = this.f16518o;
            if (str4 != null || (str4 = this.f16507d) != null) {
                str3 = str4;
            }
            eVar4.O(str3);
        } catch (Exception e11) {
            c.b("[get header exception] " + e11.getClass().getSimpleName() + " : " + e11.getMessage());
        }
        this.f16510g = c.d();
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.callStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        c.c("[connectEnd] inetSocketAddress " + inetSocketAddress);
        this.f16518o.j0(c.e(this.f16513j));
        e eVar = this.f16518o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        eVar.Z(strName);
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
        }
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        Intrinsics.h(ioe, "ioe");
        super.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        c.b("[connectFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        e eVar = this.f16518o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        eVar.Z(strName);
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        }
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectStart(call, inetSocketAddress, proxy);
        this.f16513j = c.d();
        e eVar = this.f16518o;
        String hostAddress = inetSocketAddress.getAddress().getHostAddress();
        if (hostAddress == null) {
            hostAddress = "";
        }
        eVar.W(hostAddress);
        c.c("[connectStart] inetSocketAddress : " + inetSocketAddress + ", proxy : " + proxy);
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.connectStart(call, inetSocketAddress, proxy);
        }
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        String strName;
        TlsVersion tlsVersion;
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionAcquired(call, connection);
        c.c("[connectionAcquired] connection: " + connection);
        e eVar = this.f16518o;
        Handshake handshake = connection.getHandshake();
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        eVar.k0(strName);
        this.f16518o.Z(connection.protocol().name());
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.connectionAcquired(call, connection);
        }
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionReleased(call, connection);
        c.c("[connectionReleased]");
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.connectionReleased(call, connection);
        }
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String domainName, List inetAddressList) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        Intrinsics.h(inetAddressList, "inetAddressList");
        super.dnsEnd(call, domainName, inetAddressList);
        c.c("[dnsEnd] inetAddressList " + CollectionsKt.s0(inetAddressList, ",", "[", "]", 0, null, null, 56, null));
        this.f16518o.R(c.e(this.f16511h));
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.dnsEnd(call, domainName, inetAddressList);
        }
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        super.dnsStart(call, domainName);
        c.c("[dnsStart] domainName: " + domainName);
        this.f16511h = c.d();
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.dnsStart(call, domainName);
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j11) {
        Intrinsics.h(call, "call");
        super.requestBodyEnd(call, j11);
        c.c("[requestBodyEnd] byteCount: " + j11);
        this.f16516m = c.d();
        e eVar = this.f16518o;
        eVar.b0(j11);
        eVar.f0(this.f16516m - this.f16514k);
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.requestBodyEnd(call, j11);
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestBodyStart(call);
        c.c("[requestBodyStart]");
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.requestBodyStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.requestFailed(call, ioe);
        c.b("[requestFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.requestFailed(call, ioe);
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.h(call, "call");
        Intrinsics.h(request, "request");
        super.requestHeadersEnd(call, request);
        c.c("[requestHeadersEnd] request :" + request);
        long jD = c.d();
        this.f16515l = jD;
        this.f16518o.f0(jD - this.f16514k);
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.requestHeadersEnd(call, request);
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestHeadersStart(call);
        c.c("[requestHeadersStart]");
        this.f16514k = c.d();
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.requestHeadersStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j11) {
        Intrinsics.h(call, "call");
        super.responseBodyEnd(call, j11);
        c.c("[responseBodyEnd] byteCount: " + j11);
        e eVar = this.f16518o;
        eVar.e0(j11);
        eVar.a0(c.e(this.f16517n));
        eVar.J(c.e(this.f16520q));
        eVar.M(String.valueOf((j11 / 1024.0f) / (eVar.c() / 1000.0f)));
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.responseBodyEnd(call, j11);
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseBodyStart(call);
        c.c("[responseBodyStart]");
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.responseBodyStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.responseFailed(call, ioe);
        c.b("[responseFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.responseFailed(call, ioe);
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        super.responseHeadersEnd(call, response);
        c.c("[responseHeadersEnd] code : " + response.code());
        String str = response.headers().get("x-response-cdn");
        if (str == null) {
            str = "";
        }
        String str2 = response.headers().get("server-time");
        if (str2 == null) {
            str2 = "0";
        }
        long j11 = Long.parseLong(str2);
        c.c(str);
        this.f16518o.K(str);
        this.f16520q = c.d();
        this.f16518o.a0(c.e(this.f16517n));
        this.f16518o.L(c.e(this.f16510g));
        this.f16518o.h0(j11);
        this.f16521r = response.code();
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseHeadersStart(call);
        c.c("[responseHeadersStart]");
        long jD = c.d();
        this.f16517n = jD;
        this.f16518o.m0(jD - Math.max(this.f16516m, this.f16515l));
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.responseHeadersStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        String strName;
        TlsVersion tlsVersion;
        Intrinsics.h(call, "call");
        super.secureConnectEnd(call, handshake);
        c.c("[secureConnectEnd]");
        e eVar = this.f16518o;
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        eVar.k0(strName);
        this.f16518o.i0(c.e(this.f16512i));
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.secureConnectEnd(call, handshake);
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        Intrinsics.h(call, "call");
        super.secureConnectStart(call);
        c.c("[secureConnectStart]");
        this.f16512i = c.d();
        EventListener eventListener = this.f16504a;
        if (eventListener != null) {
            eventListener.secureConnectStart(call);
        }
    }
}
