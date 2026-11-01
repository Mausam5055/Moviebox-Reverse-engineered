package com.transsion.http.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class q implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f45986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f45987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f45988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Looper f45989d;

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final q f45990a;

        a(q qVar, Looper looper) {
            super(looper);
            this.f45990a = qVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f45990a.g(message);
        }
    }

    public q() {
        this(null);
    }

    public q(Looper looper) {
        this(looper == null ? Looper.myLooper() : looper, false);
    }

    private q(Looper looper, boolean z10) {
        this.f45989d = null;
        if (z10) {
            cm.b.a(looper == null, "use pool thread, looper should be null!");
            this.f45989d = null;
            this.f45986a = null;
        } else {
            cm.b.a(looper != null, "use looper thread, must call Looper.prepare() first!");
            this.f45989d = looper;
            this.f45986a = new a(this, looper);
        }
        this.f45988c = z10;
    }

    @Override // com.transsion.http.impl.r
    public void a() {
        i(f(2, null));
    }

    @Override // com.transsion.http.impl.r
    public void b() {
        i(f(3, null));
    }

    @Override // com.transsion.http.impl.r
    public void c(int i11, byte[] bArr) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i11 >= 300) {
            d(i11, bArr, new IOException());
        } else {
            v(i11, bArr);
        }
    }

    @Override // com.transsion.http.impl.r
    public void d(int i11, byte[] bArr, Throwable th2) {
        i(f(1, new Object[]{Integer.valueOf(i11), bArr, th2}));
    }

    @Override // com.transsion.http.impl.r
    public final void e() {
        i(f(6, null));
    }

    protected Message f(int i11, Object obj) {
        return Message.obtain(this.f45986a, i11, obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected void g(Message message) {
        try {
            switch (message.what) {
                case 0:
                    Object[] objArr = (Object[]) message.obj;
                    if (objArr == null || objArr.length < 2) {
                        bm.a.f16624a.e("HttpCallbackImpl", "SUCCESS_MESSAGE didn't got enough params");
                    } else {
                        s(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                    }
                    break;
                case 1:
                    Object[] objArr2 = (Object[]) message.obj;
                    if (objArr2 == null || objArr2.length < 3) {
                        bm.a.f16624a.e("HttpCallbackImpl", "FAILURE_MESSAGE didn't got enough params");
                    } else {
                        m(((Integer) objArr2[0]).intValue(), (byte[]) objArr2[1], (Throwable) objArr2[2]);
                    }
                    break;
                case 2:
                    r();
                    break;
                case 3:
                    n();
                    break;
                case 4:
                    Object[] objArr3 = (Object[]) message.obj;
                    if (objArr3 == null || objArr3.length < 2) {
                        bm.a.f16624a.e("HttpCallbackImpl", "PROGRESS_MESSAGE didn't got enough params");
                    } else {
                        try {
                            p(((Long) objArr3[0]).longValue(), ((Long) objArr3[1]).longValue());
                        } catch (Throwable th2) {
                            bm.a.f16624a.e("HttpCallbackImpl", "custom onProgress contains an error", th2);
                        }
                    }
                    break;
                case 5:
                    Object[] objArr4 = (Object[]) message.obj;
                    if (objArr4 == null || objArr4.length != 1) {
                        bm.a.f16624a.e("HttpCallbackImpl", "RETRY_MESSAGE didn't get enough params");
                    } else {
                        q(((Integer) objArr4[0]).intValue());
                    }
                    break;
                case 6:
                    l();
                    break;
                case 7:
                    o();
                    break;
                default:
                    break;
            }
        } catch (Throwable th3) {
            t(th3);
        }
    }

    protected void h(Runnable runnable) {
        Handler handler;
        if (runnable != null) {
            if (k() || (handler = this.f45986a) == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    protected void i(Message message) {
        if (k() || this.f45986a == null) {
            g(message);
        } else {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            cm.b.a(this.f45986a != null, "handler should not be null!");
            this.f45986a.sendMessage(message);
        }
    }

    public boolean j() {
        return this.f45988c;
    }

    public boolean k() {
        return this.f45987b;
    }

    public void l() {
        bm.a.f16624a.d("HttpCallbackImpl", "Request got cancelled");
    }

    public abstract void m(int i11, byte[] bArr, Throwable th2);

    public void n() {
    }

    public void o() {
        bm.a.f16624a.d("HttpCallbackImpl", "Request got onPaused");
    }

    public void p(long j11, long j12) {
        bm.a.f16624a.v("HttpCallbackImpl", String.format("Progress %d from %d (%2.0f%%)", Long.valueOf(j11), Long.valueOf(j12), Double.valueOf(j12 > 0 ? ((j11 * 1.0d) / j12) * 100.0d : -1.0d)));
    }

    public void q(int i11) {
        bm.a.f16624a.d("HttpCallbackImpl", String.format("Request retry no. %d", Integer.valueOf(i11)));
    }

    public void r() {
    }

    public abstract void s(int i11, byte[] bArr);

    public void t(Throwable th2) {
        bm.a.f16624a.e("HttpCallbackImpl", "User-space exception detected!", th2);
        throw new RuntimeException(th2);
    }

    public void u() {
        i(f(7, null));
    }

    public void v(int i11, byte[] bArr) {
        i(f(0, new Object[]{Integer.valueOf(i11), bArr}));
    }
}
