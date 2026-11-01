package androidx.datastore.preferences.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f8655a;

    public b(boolean z10) {
        this.f8655a = new AtomicBoolean(z10);
    }

    public final boolean a() {
        return this.f8655a.get();
    }

    public final void b(boolean z10) {
        this.f8655a.set(z10);
    }
}
