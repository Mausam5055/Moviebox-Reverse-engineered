package com.mbridge.msdk.foundation.same.net;

/* JADX INFO: loaded from: classes5.dex */
public class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.exception.a f35426a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.toolbox.a f35427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public T f35428c;

    private e(T t11, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        this.f35428c = t11;
        this.f35427b = aVar;
    }

    public static <T> e<T> a(T t11, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        return new e<>(t11, aVar);
    }
}
