package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f31198a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f31199b = new AtomicInteger();

    public void a() {
        this.f31199b.getAndIncrement();
    }

    public void b() {
        this.f31198a.getAndIncrement();
    }

    public void c() {
        this.f31199b.set(0);
    }
}
