package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.base.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Buffer;
import okio.Source;
import okio.Timeout;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes3.dex */
class OkHttpBridgeRequestCallback extends UrlRequest.Callback {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f21446f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.cloud.hisavana.protocol.okhttptransport.c f21448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile UrlRequest f21449i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f21441a = y.s();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f21442b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f21443c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BlockingQueue f21444d = new ArrayBlockingQueue(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y f21445e = y.s();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f21447g = new ArrayList();

    private enum CallbackStep {
        ON_READ_COMPLETED,
        ON_SUCCESS,
        ON_FAILED,
        ON_CANCELED
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f21450a;

        static {
            int[] iArr = new int[CallbackStep.values().length];
            f21450a = iArr;
            try {
                iArr[CallbackStep.ON_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21450a[CallbackStep.ON_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21450a[CallbackStep.ON_CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21450a[CallbackStep.ON_READ_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CallbackStep f21451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ByteBuffer f21452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CronetException f21453c;

        private b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException) {
            this.f21451a = callbackStep;
            this.f21452b = byteBuffer;
            this.f21453c = cronetException;
        }

        /* synthetic */ b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException, a aVar) {
            this(callbackStep, byteBuffer, cronetException);
        }
    }

    private class c implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ByteBuffer f21454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile boolean f21455b;

        private c() {
            this.f21454a = ByteBuffer.allocateDirect(32768);
            this.f21455b = false;
        }

        /* synthetic */ c(OkHttpBridgeRequestCallback okHttpBridgeRequestCallback, a aVar) {
            this();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f21455b) {
                return;
            }
            this.f21455b = true;
            if (OkHttpBridgeRequestCallback.this.f21442b.get()) {
                return;
            }
            OkHttpBridgeRequestCallback.this.f21449i.cancel();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            b bVar;
            if (OkHttpBridgeRequestCallback.this.f21443c.get()) {
                throw new IOException("The request was canceled!");
            }
            m.e(buffer != null, "sink == null");
            m.h(j11 >= 0, "byteCount < 0: %s", j11);
            m.v(!this.f21455b, "closed");
            if (OkHttpBridgeRequestCallback.this.f21442b.get()) {
                return -1L;
            }
            if (j11 < this.f21454a.limit()) {
                this.f21454a.limit((int) j11);
            }
            OkHttpBridgeRequestCallback.this.f21449i.read(this.f21454a);
            try {
                bVar = (b) OkHttpBridgeRequestCallback.this.f21444d.poll(OkHttpBridgeRequestCallback.this.f21446f, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                bVar = null;
            }
            if (bVar == null) {
                OkHttpBridgeRequestCallback.this.f21449i.cancel();
                throw new CronetTimeoutException();
            }
            int i11 = a.f21450a[bVar.f21451a.ordinal()];
            if (i11 == 1) {
                OkHttpBridgeRequestCallback.this.f21442b.set(true);
                this.f21454a = null;
                throw new IOException(bVar.f21453c);
            }
            if (i11 == 2) {
                OkHttpBridgeRequestCallback.this.f21442b.set(true);
                this.f21454a = null;
                return -1L;
            }
            if (i11 == 3) {
                this.f21454a = null;
                throw new IOException("The request was canceled!");
            }
            if (i11 != 4) {
                throw new AssertionError("The switch block above is exhaustive!");
            }
            bVar.f21452b.flip();
            int iWrite = buffer.write(bVar.f21452b);
            bVar.f21452b.clear();
            return iWrite;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    OkHttpBridgeRequestCallback(long j11, com.cloud.hisavana.protocol.okhttptransport.c cVar) {
        m.d(j11 >= 0);
        if (j11 == 0) {
            this.f21446f = 2147483647L;
        } else {
            this.f21446f = j11;
        }
        this.f21448h = cVar;
    }

    r f() {
        return this.f21441a;
    }

    r g() {
        return this.f21445e;
    }

    List h() {
        return Collections.unmodifiableList(this.f21447g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f21443c.set(true);
        this.f21444d.add(new b(CallbackStep.ON_CANCELED, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
        IOException iOException = new IOException("The request was canceled!");
        this.f21445e.setException(iOException);
        this.f21441a.setException(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        if (this.f21445e.setException(cronetException) && this.f21441a.setException(cronetException)) {
            return;
        }
        this.f21444d.add(new b(CallbackStep.ON_FAILED, null, cronetException, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.f21444d.add(new b(CallbackStep.ON_READ_COMPLETED, byteBuffer, null, 0 == true ? 1 : 0));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        if (!this.f21448h.b()) {
            m.u(this.f21445e.set(urlResponseInfo));
            m.u(this.f21441a.set(new Buffer()));
            urlRequest.cancel();
            return;
        }
        this.f21447g.add(urlResponseInfo);
        if (urlResponseInfo.getUrlChain().size() <= this.f21448h.c()) {
            urlRequest.followRedirect();
            return;
        }
        urlRequest.cancel();
        ProtocolException protocolException = new ProtocolException("Too many follow-up requests: " + (this.f21448h.c() + 1));
        this.f21445e.setException(protocolException);
        this.f21441a.setException(protocolException);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f21449i = urlRequest;
        m.u(this.f21445e.set(urlResponseInfo));
        m.u(this.f21441a.set(new c(this, null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f21444d.add(new b(CallbackStep.ON_SUCCESS, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
    }
}
