package com.iab.omid.library.vungle.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f33814b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f33815a;

    private g() {
    }

    public static g c() {
        return f33814b;
    }

    public Context a() {
        return this.f33815a;
    }

    public void b(Context context) {
        this.f33815a = context != null ? context.getApplicationContext() : null;
    }
}
