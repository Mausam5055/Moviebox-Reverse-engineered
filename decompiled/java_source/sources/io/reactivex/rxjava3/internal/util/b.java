package io.reactivex.rxjava3.internal.util;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static void a() {
        if (pz.a.k()) {
            if ((Thread.currentThread() instanceof io.reactivex.rxjava3.internal.schedulers.f) || pz.a.q()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
