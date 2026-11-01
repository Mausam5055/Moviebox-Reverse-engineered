package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AuthFailureError;
import com.android.volley.ClientError;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class l {

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f19307a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final VolleyError f19308b;

        private b(String str, VolleyError volleyError) {
            this.f19307a = str;
            this.f19308b = volleyError;
        }
    }

    static void a(Request request, b bVar) throws VolleyError {
        com.android.volley.k retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.b(bVar.f19308b);
            request.addMarker(String.format("%s-retry [timeout=%s]", bVar.f19307a, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e11) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", bVar.f19307a, Integer.valueOf(timeoutMs)));
            throw e11;
        }
    }

    static com.android.volley.g b(Request request, long j11, List list) {
        com.android.volley.c.a cacheEntry = request.getCacheEntry();
        if (cacheEntry == null) {
            return new com.android.volley.g(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, (byte[]) null, true, j11, list);
        }
        return new com.android.volley.g(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, cacheEntry.f19220a, true, j11, d.a(list, cacheEntry));
    }

    static byte[] c(InputStream inputStream, int i11, ByteArrayPool byteArrayPool) throws Throwable {
        byte[] bArrA;
        m mVar = new m(byteArrayPool, i11);
        try {
            bArrA = byteArrayPool.a(1024);
            while (true) {
                try {
                    int i12 = inputStream.read(bArrA);
                    if (i12 == -1) {
                        break;
                    }
                    mVar.write(bArrA, 0, i12);
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            com.android.volley.l.e("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    byteArrayPool.b(bArrA);
                    mVar.close();
                    throw th;
                }
            }
            byte[] byteArray = mVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                com.android.volley.l.e("Error occurred when closing InputStream", new Object[0]);
            }
            byteArrayPool.b(bArrA);
            mVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArrA = null;
        }
    }

    static void d(long j11, Request request, byte[] bArr, int i11) {
        if (com.android.volley.l.f19256b || j11 > 3000) {
            com.android.volley.l.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j11), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i11), Integer.valueOf(request.getRetryPolicy().a()));
        }
    }

    static b e(Request request, IOException iOException, long j11, e eVar, byte[] bArr) throws ServerError, NoConnectionError {
        if (iOException instanceof SocketTimeoutException) {
            return new b("socket", new TimeoutError());
        }
        if (iOException instanceof MalformedURLException) {
            throw new RuntimeException("Bad URL " + request.getUrl(), iOException);
        }
        if (eVar == null) {
            if (request.shouldRetryConnectionErrors()) {
                return new b("connection", new NoConnectionError());
            }
            throw new NoConnectionError(iOException);
        }
        int iD = eVar.d();
        com.android.volley.l.c("Unexpected response code %d for %s", Integer.valueOf(iD), request.getUrl());
        if (bArr == null) {
            return new b("network", new NetworkError());
        }
        com.android.volley.g gVar = new com.android.volley.g(iD, bArr, false, SystemClock.elapsedRealtime() - j11, eVar.c());
        if (iD == 401 || iD == 403) {
            return new b("auth", new AuthFailureError(gVar));
        }
        if (iD >= 400 && iD <= 499) {
            throw new ClientError(gVar);
        }
        if (iD < 500 || iD > 599 || !request.shouldRetryServerErrors()) {
            throw new ServerError(gVar);
        }
        return new b(TmcConstants.CHANNEL_REQUEST_SERVER, new ServerError(gVar));
    }
}
