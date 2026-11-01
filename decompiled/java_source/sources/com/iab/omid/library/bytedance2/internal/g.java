package com.iab.omid.library.bytedance2.internal;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static g f33454b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f33455a;

    private g() {
    }

    public static g b() {
        return f33454b;
    }

    public Context a() {
        return this.f33455a;
    }

    public void a(Context context) {
        this.f33455a = context != null ? context.getApplicationContext() : null;
    }
}
