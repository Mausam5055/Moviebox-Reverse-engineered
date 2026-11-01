package com.amazonaws;

import com.amazonaws.http.HttpResponse;

/* JADX INFO: loaded from: classes2.dex */
public final class Response<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f18317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HttpResponse f18318b;

    public Response(Object obj, HttpResponse httpResponse) {
        this.f18317a = obj;
        this.f18318b = httpResponse;
    }

    public Object a() {
        return this.f18317a;
    }
}
