package com.facebook.ads;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
class B implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f24084a;

    B(Activity activity) {
        this.f24084a = activity;
    }

    @Override // java.lang.Runnable
    public native void run();
}
