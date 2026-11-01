package com.facebook.ads;

import android.app.Activity;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class C implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ B f24085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Activity f24086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ JSONObject f24087c;

    C(B b11, Activity activity, JSONObject jSONObject) {
        this.f24085a = b11;
        this.f24086b = activity;
        this.f24087c = jSONObject;
    }

    @Override // java.lang.Runnable
    public native void run();
}
