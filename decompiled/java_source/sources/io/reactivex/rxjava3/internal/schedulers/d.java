package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends Scheduler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final RxThreadFactory f65518d = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.newthread-priority", 5).intValue())));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ThreadFactory f65519c;

    public d() {
        this(f65518d);
    }

    public d(ThreadFactory threadFactory) {
        this.f65519c = threadFactory;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new e(this.f65519c);
    }
}
