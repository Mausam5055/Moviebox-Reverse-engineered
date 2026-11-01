package com.google.net.cronet.okhttptransport;

import com.google.common.base.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
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

/* JADX INFO: loaded from: classes.dex */
class OkHttpBridgeRequestCallback extends UrlRequest.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f32751a = y.s();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f32752b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f32753c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BlockingQueue f32754d = new ArrayBlockingQueue(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y f32755e = y.s();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f32756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.net.cronet.okhttptransport.c f32757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile UrlRequest f32758h;

    private enum CallbackStep {
        ON_READ_COMPLETED,
        ON_SUCCESS,
        ON_FAILED,
        ON_CANCELED
    }

    /* JADX INFO: loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32759a;

        static {
            int[] iArr = new int[CallbackStep.values().length];
            f32759a = iArr;
            try {
                iArr[CallbackStep.ON_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32759a[CallbackStep.ON_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32759a[CallbackStep.ON_CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32759a[CallbackStep.ON_READ_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CallbackStep f32760a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ByteBuffer f32761b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CronetException f32762c;

        private b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException) {
            this.f32760a = callbackStep;
            this.f32761b = byteBuffer;
            this.f32762c = cronetException;
        }

        /* synthetic */ b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException, a aVar) {
            this(callbackStep, byteBuffer, cronetException);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private class c implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ByteBuffer f32763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile boolean f32764b;

        private c() {
            this.f32763a = ByteBuffer.allocateDirect(32768);
            this.f32764b = false;
        }

        /* synthetic */ c(OkHttpBridgeRequestCallback okHttpBridgeRequestCallback, a aVar) {
            this();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f32764b) {
                return;
            }
            this.f32764b = true;
            if (OkHttpBridgeRequestCallback.this.f32752b.get()) {
                return;
            }
            OkHttpBridgeRequestCallback.this.f32758h.cancel();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            b bVar;
            if (OkHttpBridgeRequestCallback.this.f32753c.get()) {
                throw new IOException("The request was canceled!");
            }
            m.e(buffer != null, "sink == null");
            m.h(j11 >= 0, "byteCount < 0: %s", j11);
            m.v(!this.f32764b, "closed");
            if (OkHttpBridgeRequestCallback.this.f32752b.get()) {
                return -1L;
            }
            if (j11 < this.f32763a.limit()) {
                this.f32763a.limit((int) j11);
            }
            OkHttpBridgeRequestCallback.this.f32758h.read(this.f32763a);
            try {
                bVar = (b) OkHttpBridgeRequestCallback.this.f32754d.poll(OkHttpBridgeRequestCallback.this.f32756f, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                bVar = null;
            }
            if (bVar == null) {
                OkHttpBridgeRequestCallback.this.f32758h.cancel();
                throw new CronetTimeoutException();
            }
            int i11 = a.f32759a[bVar.f32760a.ordinal()];
            if (i11 == 1) {
                OkHttpBridgeRequestCallback.this.f32752b.set(true);
                this.f32763a = null;
                throw new IOException(bVar.f32762c);
            }
            if (i11 == 2) {
                OkHttpBridgeRequestCallback.this.f32752b.set(true);
                this.f32763a = null;
                return -1L;
            }
            if (i11 == 3) {
                this.f32763a = null;
                throw new IOException("The request was canceled!");
            }
            if (i11 != 4) {
                throw new AssertionError("The switch block above is exhaustive!");
            }
            bVar.f32761b.flip();
            int iWrite = buffer.write(bVar.f32761b);
            bVar.f32761b.clear();
            return iWrite;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    OkHttpBridgeRequestCallback(long j11, com.google.net.cronet.okhttptransport.c cVar) {
        m.d(j11 >= 0);
        if (j11 == 0) {
            this.f32756f = 2147483647L;
        } else {
            this.f32756f = j11;
        }
        this.f32757g = cVar;
    }

    r f() {
        return this.f32751a;
    }

    r g() {
        return this.f32755e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f32753c.set(true);
        this.f32754d.add(new b(CallbackStep.ON_CANCELED, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
        IOException iOException = new IOException("The request was canceled!");
        this.f32755e.setException(iOException);
        this.f32751a.setException(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        if (this.f32755e.setException(cronetException) && this.f32751a.setException(cronetException)) {
            return;
        }
        this.f32754d.add(new b(CallbackStep.ON_FAILED, null, cronetException, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.f32754d.add(new b(CallbackStep.ON_READ_COMPLETED, byteBuffer, null, 0 == true ? 1 : 0));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        if (!this.f32757g.b()) {
            m.u(this.f32755e.set(urlResponseInfo));
            m.u(this.f32751a.set(new Buffer()));
            urlRequest.cancel();
        } else {
            if (urlResponseInfo.getUrlChain().size() <= this.f32757g.c()) {
                urlRequest.followRedirect();
                return;
            }
            urlRequest.cancel();
            ProtocolException protocolException = new ProtocolException("Too many follow-up requests: " + (this.f32757g.c() + 1));
            this.f32755e.setException(protocolException);
            this.f32751a.setException(protocolException);
        }
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f32758h = urlRequest;
        m.u(this.f32755e.set(urlResponseInfo));
        m.u(this.f32751a.set(new c(this, null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.chromium.net.UrlRequest.Callback
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f32754d.add(new b(CallbackStep.ON_SUCCESS, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
    }
}
