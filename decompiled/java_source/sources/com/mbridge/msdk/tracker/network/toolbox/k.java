package com.mbridge.msdk.tracker.network.toolbox;

import android.os.SystemClock;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.tracker.network.a0;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.c0;
import com.mbridge.msdk.tracker.network.p;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.r;
import com.mbridge.msdk.tracker.network.t;
import com.mbridge.msdk.tracker.network.x;
import com.mbridge.msdk.tracker.network.y;
import com.mbridge.msdk.tracker.network.z;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class k {

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f38675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b0 f38676b;

        private b(String str, b0 b0Var) {
            this.f38675a = str;
            this.f38676b = b0Var;
        }
    }

    static q a(t<?> tVar, long j11, List<com.mbridge.msdk.tracker.network.g> list) {
        com.mbridge.msdk.tracker.network.b.a aVarD = tVar.d();
        if (aVarD == null) {
            return new q(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, null, true, j11, list);
        }
        return new q(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, aVarD.f38552a, true, j11, f.a(list, aVarD));
    }

    static b a(t<?> tVar, IOException iOException, long j11, g gVar, byte[] bArr) throws b0 {
        if (iOException instanceof SocketTimeoutException) {
            return new b("socket", new z());
        }
        if (iOException instanceof MalformedURLException) {
            throw new com.mbridge.msdk.tracker.network.a("Bad URL " + tVar.t());
        }
        if (gVar == null) {
            if (tVar.A()) {
                return new b("connection", new r());
            }
            throw new r(iOException);
        }
        int iD = gVar.d();
        c0.c("Unexpected response code %d for %s", Integer.valueOf(iD), tVar.t());
        if (bArr == null) {
            com.mbridge.msdk.tracker.network.o oVar = new com.mbridge.msdk.tracker.network.o();
            oVar.a(iD);
            return new b("network", oVar);
        }
        q qVar = new q(iD, bArr, false, SystemClock.elapsedRealtime() - j11, gVar.c());
        if (iD >= 400 && iD <= 499) {
            com.mbridge.msdk.tracker.network.d dVar = new com.mbridge.msdk.tracker.network.d(qVar);
            dVar.a(iD);
            throw dVar;
        }
        y yVar = new y(qVar);
        yVar.a(iD);
        if (iD < 500 || iD > 599 || !tVar.B()) {
            throw yVar;
        }
        return new b(TmcConstants.CHANNEL_REQUEST_SERVER, yVar);
    }

    static void a(long j11, t<?> tVar, byte[] bArr, int i11) {
        if (j11 > 3000) {
            c0.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", tVar, Long.valueOf(j11), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i11), Integer.valueOf(tVar.o().c()));
        }
    }

    private static void a(p pVar) {
        if (pVar != null) {
            pVar.c(0L);
        }
    }

    private static void a(p pVar, int i11) {
        if (pVar != null) {
            pVar.c(pVar.B() + ((long) i11));
        }
    }

    static void a(t<?> tVar, b bVar) throws b0 {
        if (tVar == null) {
            throw new a0("request is null when retrying");
        }
        if (bVar == null) {
            throw new a0("retry info is null when retrying");
        }
        x xVarO = tVar.o();
        if (xVarO == null) {
            throw bVar.f38676b;
        }
        if (!xVarO.a(bVar.f38676b)) {
            throw bVar.f38676b;
        }
    }

    static byte[] a(InputStream inputStream, int i11, c cVar, p pVar) throws Throwable {
        byte[] bArrA;
        n nVar = new n(cVar, i11);
        a(pVar);
        try {
            bArrA = cVar.a(1024);
            while (true) {
                try {
                    int i12 = inputStream.read(bArrA);
                    if (i12 == -1) {
                        break;
                    }
                    nVar.write(bArrA, 0, i12);
                    a(pVar, i12);
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            c0.d("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    cVar.a(bArrA);
                    nVar.close();
                    throw th;
                }
            }
            byte[] byteArray = nVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                c0.d("Error occurred when closing InputStream", new Object[0]);
            }
            cVar.a(bArrA);
            nVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArrA = null;
        }
    }
}
