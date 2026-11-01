package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class h extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f8271c;

    public h(int i11) {
        super(i11);
        this.f8271c = new Object();
    }

    @Override // androidx.core.util.g, androidx.core.util.f
    public Object acquire() {
        Object objAcquire;
        synchronized (this.f8271c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override // androidx.core.util.g, androidx.core.util.f
    public boolean release(Object instance) {
        boolean zRelease;
        Intrinsics.h(instance, "instance");
        synchronized (this.f8271c) {
            zRelease = super.release(instance);
        }
        return zRelease;
    }
}
