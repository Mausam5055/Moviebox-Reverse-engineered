package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f38007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f38008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile com.mbridge.msdk.thrid.okhttp.internal.connection.g f38009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f38010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f38011e;

    public j(t tVar, boolean z10) {
        this.f38007a = tVar;
        this.f38008b = z10;
    }

    private int a(y yVar, int i11) {
        String strB = yVar.b("Retry-After");
        if (strB == null) {
            return i11;
        }
        if (strB.matches("\\d+")) {
            return Integer.valueOf(strB).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private com.mbridge.msdk.thrid.okhttp.a a(q qVar) {
        SSLSocketFactory sSLSocketFactoryB;
        HostnameVerifier hostnameVerifierO;
        com.mbridge.msdk.thrid.okhttp.e eVarC;
        if (qVar.h()) {
            sSLSocketFactoryB = this.f38007a.B();
            hostnameVerifierO = this.f38007a.o();
            eVarC = this.f38007a.c();
        } else {
            sSLSocketFactoryB = null;
            hostnameVerifierO = null;
            eVarC = null;
        }
        return new com.mbridge.msdk.thrid.okhttp.a(qVar.g(), qVar.j(), this.f38007a.k(), this.f38007a.A(), sSLSocketFactoryB, hostnameVerifierO, eVarC, this.f38007a.w(), this.f38007a.v(), this.f38007a.u(), this.f38007a.g(), this.f38007a.x());
    }

    private w a(y yVar, a0 a0Var) throws IOException {
        String strB;
        q qVarE;
        if (yVar == null) {
            throw new IllegalStateException();
        }
        int iK = yVar.k();
        String strE = yVar.r().e();
        if (iK == 307 || iK == 308) {
            if (!strE.equals("GET") && !strE.equals("HEAD")) {
                return null;
            }
        } else {
            if (iK == 401) {
                return this.f38007a.a().a(a0Var, yVar);
            }
            if (iK == 503) {
                if ((yVar.p() == null || yVar.p().k() != 503) && a(yVar, Integer.MAX_VALUE) == 0) {
                    return yVar.r();
                }
                return null;
            }
            if (iK == 407) {
                if (a0Var.b().type() == Proxy.Type.HTTP) {
                    return this.f38007a.w().a(a0Var, yVar);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iK == 408) {
                if (!this.f38007a.z()) {
                    return null;
                }
                yVar.r().a();
                if ((yVar.p() == null || yVar.p().k() != 408) && a(yVar, 0) <= 0) {
                    return yVar.r();
                }
                return null;
            }
            switch (iK) {
                case 300:
                case MRAID_ERROR_VALUE:
                case INVALID_IFA_STATUS_VALUE:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f38007a.m() || (strB = yVar.b(HttpHeaders.LOCATION)) == null || (qVarE = yVar.r().g().e(strB)) == null) {
            return null;
        }
        if (!qVarE.l().equals(yVar.r().g().l()) && !this.f38007a.n()) {
            return null;
        }
        w.a aVarF = yVar.r().f();
        if (f.a(strE)) {
            boolean zC = f.c(strE);
            if (f.b(strE)) {
                aVarF.a("GET", (x) null);
            } else {
                aVarF.a(strE, zC ? yVar.r().a() : null);
            }
            if (!zC) {
                aVarF.a("Transfer-Encoding");
                aVarF.a(HttpHeaders.CONTENT_LENGTH);
                aVarF.a(HttpHeaders.CONTENT_TYPE);
            }
        }
        if (!a(yVar, qVarE)) {
            aVarF.a(HttpHeaders.AUTHORIZATION);
        }
        return aVarF.a(qVarE).a();
    }

    private boolean a(y yVar, q qVar) {
        q qVarG = yVar.r().g();
        return qVarG.g().equals(qVar.g()) && qVarG.j() == qVar.j() && qVarG.l().equals(qVar.l());
    }

    private boolean a(IOException iOException, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, boolean z10, w wVar) {
        gVar.a(iOException);
        if (this.f38007a.z()) {
            return !(z10 && a(iOException, wVar)) && a(iOException, z10) && gVar.d();
        }
        return false;
    }

    private boolean a(IOException iOException, w wVar) {
        wVar.a();
        return iOException instanceof FileNotFoundException;
    }

    private boolean a(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && !z10;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        w wVarD = aVar.d();
        g gVar = (g) aVar;
        com.mbridge.msdk.thrid.okhttp.d dVarE = gVar.e();
        n nVarG = gVar.g();
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar2 = new com.mbridge.msdk.thrid.okhttp.internal.connection.g(this.f38007a.f(), a(wVarD.g()), dVarE, nVarG, this.f38010d);
        this.f38009c = gVar2;
        int i11 = 0;
        y yVar = null;
        while (!this.f38011e) {
            try {
                try {
                    y yVarA = gVar.a(wVarD, gVar2, null, null);
                    if (yVar != null) {
                        yVarA = yVarA.o().d(yVar.o().a((z) null).a()).a();
                    }
                    try {
                        w wVarA = a(yVarA, gVar2.h());
                        if (wVarA == null) {
                            gVar2.f();
                            return yVarA;
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(yVarA.d());
                        int i12 = i11 + 1;
                        if (i12 > 20) {
                            gVar2.f();
                            throw new ProtocolException("Too many follow-up requests: " + i12);
                        }
                        wVarA.a();
                        if (!a(yVarA, wVarA.g())) {
                            gVar2.f();
                            gVar2 = new com.mbridge.msdk.thrid.okhttp.internal.connection.g(this.f38007a.f(), a(wVarA.g()), dVarE, nVarG, this.f38010d);
                            this.f38009c = gVar2;
                        } else if (gVar2.b() != null) {
                            throw new IllegalStateException("Closing the body of " + yVarA + " didn't close its backing stream. Bad interceptor?");
                        }
                        yVar = yVarA;
                        wVarD = wVarA;
                        i11 = i12;
                    } catch (IOException e11) {
                        gVar2.f();
                        throw e11;
                    }
                } catch (com.mbridge.msdk.thrid.okhttp.internal.connection.e e12) {
                    if (!a(e12.b(), gVar2, false, wVarD)) {
                        throw e12.a();
                    }
                } catch (IOException e13) {
                    if (!a(e13, gVar2, !(e13 instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.a), wVarD)) {
                        throw e13;
                    }
                }
            } catch (Throwable th2) {
                gVar2.a((IOException) null);
                gVar2.f();
                throw th2;
            }
        }
        gVar2.f();
        throw new IOException("Canceled");
    }

    public void a() {
        this.f38011e = true;
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f38009c;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void a(Object obj) {
        this.f38010d = obj;
    }

    public boolean b() {
        return this.f38011e;
    }
}
