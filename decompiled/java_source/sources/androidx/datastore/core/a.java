package androidx.datastore.core;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f8590a;

    public a(int i11) {
        this.f8590a = new AtomicInteger(i11);
    }

    public final int a() {
        return this.f8590a.decrementAndGet();
    }

    public final int b() {
        return this.f8590a.get();
    }

    public final int c() {
        return this.f8590a.getAndIncrement();
    }

    public final int d() {
        return this.f8590a.incrementAndGet();
    }
}
