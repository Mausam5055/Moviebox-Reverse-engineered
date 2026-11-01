package com.cloud.hisavana.net.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cloud.sdk.commonutil.util.c;
import java.io.IOException;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes.dex */
public abstract class HttpCallbackImpl implements IHttpCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f21416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Looper f21417b;

    /* JADX INFO: loaded from: classes3.dex */
    private static class ResponderHandler extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HttpCallbackImpl f21418a;

        ResponderHandler(HttpCallbackImpl httpCallbackImpl, Looper looper) {
            super(looper);
            this.f21418a = httpCallbackImpl;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f21418a.g(message);
        }
    }

    public HttpCallbackImpl() {
        this(true);
    }

    private HttpCallbackImpl(Looper looper) {
        this.f21416a = null;
        this.f21417b = null;
        if (looper != null) {
            this.f21417b = looper;
            this.f21416a = new ResponderHandler(this, looper);
        }
    }

    public HttpCallbackImpl(boolean z10) {
        this(z10 ? Looper.myLooper() : null);
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void a() {
        s(h(2, null));
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void b() {
        s(h(3, null));
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void c(int i11, byte[] bArr) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i11 >= 300) {
            d(i11, bArr, new IOException());
        } else {
            t(i11, bArr);
        }
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void d(int i11, byte[] bArr, Throwable th2) {
        s(h(1, new Object[]{Integer.valueOf(i11), bArr, th2}));
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void e(int i11, byte[] bArr, String str) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i11 >= 300) {
            d(i11, bArr, new IOException());
        } else {
            u(i11, bArr, str);
        }
    }

    @Override // com.cloud.hisavana.net.impl.IHttpCallback
    public void f(int i11, byte[] bArr, Headers headers) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i11 >= 300) {
            r(i11, bArr, new IOException(), headers);
        } else {
            v(i11, bArr, headers);
        }
    }

    protected void g(Message message) {
        try {
            int i11 = message.what;
            if (i11 == 0) {
                Object[] objArr = (Object[]) message.obj;
                if (objArr == null || objArr.length < 2) {
                    c.Log().e("HttpCallbackImpl", "SUCCESS_MESSAGE didn't got enough params");
                    return;
                }
                if (objArr.length < 3) {
                    n(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                    return;
                }
                Object obj = objArr[2];
                if (obj instanceof String) {
                    o(((Integer) objArr[0]).intValue(), (byte[]) objArr[1], (String) objArr[2]);
                    return;
                } else {
                    if (obj instanceof Headers) {
                        l((Headers) obj);
                        n(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                        return;
                    }
                    return;
                }
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    m();
                    return;
                }
                if (i11 == 3) {
                    j();
                    return;
                } else if (i11 != 7) {
                    c.Log().e("HttpCallbackImpl", "UnKnown message");
                    return;
                } else {
                    k();
                    return;
                }
            }
            Object[] objArr2 = (Object[]) message.obj;
            if (objArr2 == null || objArr2.length < 3) {
                c.Log().e("HttpCallbackImpl", "FAILURE_MESSAGE didn't got enough params");
                return;
            }
            if (objArr2.length >= 4) {
                Object obj2 = objArr2[3];
                if (obj2 instanceof Headers) {
                    l((Headers) obj2);
                }
            }
            i(((Integer) objArr2[0]).intValue(), (byte[]) objArr2[1], (Throwable) objArr2[2]);
        } catch (Throwable th2) {
            p(th2);
        }
    }

    protected Message h(int i11, Object obj) {
        return Message.obtain(this.f21416a, i11, obj);
    }

    public abstract void i(int i11, byte[] bArr, Throwable th2);

    public void j() {
    }

    public void k() {
        c.Log().d("HttpCallbackImpl", "Request got onPaused");
    }

    public void l(Headers headers) {
    }

    public void m() {
    }

    public abstract void n(int i11, byte[] bArr);

    public void o(int i11, byte[] bArr, String str) {
    }

    public void p(Throwable th2) {
        c.Log().e("HttpCallbackImpl", "User-space exception detected!", th2);
        throw new RuntimeException(th2);
    }

    protected void q(Runnable runnable) {
        if (runnable != null) {
            Handler handler = this.f21416a;
            if (handler == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public void r(int i11, byte[] bArr, Throwable th2, Headers headers) {
        s(h(1, new Object[]{Integer.valueOf(i11), bArr, th2, headers}));
    }

    protected void s(Message message) {
        Handler handler;
        if (this.f21416a == null) {
            g(message);
        } else {
            if (Thread.currentThread().isInterrupted() || (handler = this.f21416a) == null) {
                return;
            }
            handler.sendMessage(message);
        }
    }

    public void t(int i11, byte[] bArr) {
        s(h(0, new Object[]{Integer.valueOf(i11), bArr}));
    }

    public void u(int i11, byte[] bArr, String str) {
        s(h(0, new Object[]{Integer.valueOf(i11), bArr, str}));
    }

    public void v(int i11, byte[] bArr, Headers headers) {
        s(h(0, new Object[]{Integer.valueOf(i11), bArr, headers}));
    }
}
