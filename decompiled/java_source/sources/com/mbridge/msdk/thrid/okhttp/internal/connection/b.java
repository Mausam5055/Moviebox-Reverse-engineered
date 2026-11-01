package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.i;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<i> f37937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37938b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f37939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f37940d;

    public b(List<i> list) {
        this.f37937a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i11 = this.f37938b; i11 < this.f37937a.size(); i11++) {
            if (this.f37937a.get(i11).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public i a(SSLSocket sSLSocket) throws IOException {
        i iVar;
        int i11 = this.f37938b;
        int size = this.f37937a.size();
        while (true) {
            if (i11 >= size) {
                iVar = null;
                break;
            }
            iVar = this.f37937a.get(i11);
            if (iVar.a(sSLSocket)) {
                this.f37938b = i11 + 1;
                break;
            }
            i11++;
        }
        if (iVar != null) {
            this.f37939c = b(sSLSocket);
            com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(iVar, sSLSocket, this.f37940d);
            return iVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f37940d + ", modes=" + this.f37937a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean a(IOException iOException) {
        this.f37940d = true;
        if (!this.f37939c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
