package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f33703b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f33704a;

    private g() {
    }

    public static g c() {
        return f33703b;
    }

    public Context a() {
        return this.f33704a;
    }

    public void b(Context context) {
        this.f33704a = context != null ? context.getApplicationContext() : null;
    }
}
