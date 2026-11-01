package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class d implements androidx.work.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f15633a = androidx.core.os.h.a(Looper.getMainLooper());

    @Override // androidx.work.d0
    public void a(Runnable runnable) {
        this.f15633a.removeCallbacks(runnable);
    }

    @Override // androidx.work.d0
    public void b(long j11, Runnable runnable) {
        this.f15633a.postDelayed(runnable, j11);
    }
}
