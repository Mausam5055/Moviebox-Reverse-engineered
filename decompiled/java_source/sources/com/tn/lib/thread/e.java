package com.tn.lib.thread;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f40877b;

    public e(Runnable mRunnable) {
        Intrinsics.h(mRunnable, "mRunnable");
        this.f40877b = mRunnable;
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        this.f40877b.run();
        a.f40865a.a().remove(this);
        return false;
    }
}
