package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f38283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f38284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f38285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f38286d;

    private o(b0 b0Var, f fVar, List<Certificate> list, List<Certificate> list2) {
        this.f38283a = b0Var;
        this.f38284b = fVar;
        this.f38285c = list;
        this.f38286d = list2;
    }

    public static o a(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        f fVarA = f.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        b0 b0VarA = b0.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listA = peerCertificates != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new o(b0VarA, fVarA, listA, localCertificates != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(localCertificates) : Collections.emptyList());
    }

    public f a() {
        return this.f38284b;
    }

    public List<Certificate> b() {
        return this.f38285c;
    }

    public b0 c() {
        return this.f38283a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f38283a.equals(oVar.f38283a) && this.f38284b.equals(oVar.f38284b) && this.f38285c.equals(oVar.f38285c) && this.f38286d.equals(oVar.f38286d);
    }

    public int hashCode() {
        return ((((((this.f38283a.hashCode() + 527) * 31) + this.f38284b.hashCode()) * 31) + this.f38285c.hashCode()) * 31) + this.f38286d.hashCode();
    }
}
