package com.facebook.ads;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class E implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f24089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f24090b;

    E(String str, Activity activity) {
        this.f24090b = str;
        this.f24089a = activity;
    }

    @Override // android.view.View.OnClickListener
    public native void onClick(View view);
}
