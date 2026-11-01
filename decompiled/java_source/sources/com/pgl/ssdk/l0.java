package com.pgl.ssdk;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class l0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f40179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f40180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f40181c;

    public l0(Context context, int i11, Object[] objArr) {
        this.f40179a = context;
        this.f40180b = i11;
        this.f40181c = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f40180b == 222) {
                h0.a(this.f40179a).a();
            }
            byte[] bArr = (byte[]) com.pgl.ssdk.ces.a.meta(this.f40180b, this.f40179a, this.f40181c);
            if (bArr == null || bArr.length <= 0) {
                return;
            }
            new m0(this.f40179a, this.f40180b).a(1, 2, bArr);
        } catch (Throwable unused) {
        }
    }
}
