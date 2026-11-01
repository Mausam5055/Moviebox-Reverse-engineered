package com.therouter;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f40724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f40725b;

    public b(String trace) {
        Intrinsics.h(trace, "trace");
        this.f40724a = trace;
        this.f40725b = System.currentTimeMillis();
    }

    public final long a() {
        return this.f40725b;
    }

    public final String b() {
        return this.f40724a;
    }
}
