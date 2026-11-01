package com.iab.omid.library.hisavana.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f33584b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f33585a;

    private g() {
    }

    public static g c() {
        return f33584b;
    }

    public Context a() {
        return this.f33585a;
    }

    public void b(Context context) {
        this.f33585a = context != null ? context.getApplicationContext() : null;
    }
}
