package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f36564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Object f36565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected WindVaneWebView f36566c;

    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        this.f36564a = context;
        this.f36566c = windVaneWebView;
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        this.f36565b = obj;
        this.f36566c = windVaneWebView;
    }
}
