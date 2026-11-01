package com.cloud.hisavana.sdk.common.http.listener;

import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResponseBaseListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f22088a;

    /* JADX INFO: loaded from: classes3.dex */
    private static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }
    }

    public ResponseBaseListener() {
        this(true);
    }

    private ResponseBaseListener(Looper looper) {
        this.f22088a = null;
        if (looper != null) {
            this.f22088a = new a(looper);
        } else {
            this.f22088a = null;
        }
    }

    protected ResponseBaseListener(boolean z10) {
        this(z10 ? Looper.myLooper() : null);
    }

    public abstract void a(TaErrorCode taErrorCode);

    public void b(int i11) {
    }

    public void c(int i11, String str, Throwable th2) {
        e(new TaErrorCode(i11, "erro msg = " + str));
    }

    public void d(int i11, byte[] bArr, Throwable th2) {
        e(new TaErrorCode(i11, "erro msg = " + bArr));
    }

    public void e(final TaErrorCode taErrorCode) {
        Handler handler = this.f22088a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener.1
                @Override // java.lang.Runnable
                public void run() {
                    ResponseBaseListener.this.a(taErrorCode);
                }
            });
        } else {
            a(taErrorCode);
        }
    }

    public void f(final int i11) {
        Handler handler = this.f22088a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener.2
                @Override // java.lang.Runnable
                public void run() {
                    ResponseBaseListener.this.b(i11);
                }
            });
        } else {
            b(i11);
        }
    }
}
