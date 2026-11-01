package androidx.datastore.core.okio;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f8624a;

    public a(boolean z10) {
        this.f8624a = new AtomicBoolean(z10);
    }

    public final boolean a() {
        return this.f8624a.get();
    }

    public final void b(boolean z10) {
        this.f8624a.set(z10);
    }
}
