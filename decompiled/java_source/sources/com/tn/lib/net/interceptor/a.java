package com.tn.lib.net.interceptor;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements HttpLoggingInterceptor.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f40841c = "HttpLogInterceptor";

    @Override // com.tn.lib.net.interceptor.HttpLoggingInterceptor.a
    public void log(String message) {
        Intrinsics.h(message, "message");
        lg.a.C0828a.f(lg.a.f68839a, this.f40841c, message, false, 4, null);
    }
}
