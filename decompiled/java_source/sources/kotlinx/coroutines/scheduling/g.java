package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.c0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f67940a = a0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f67941b = c0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f67942c = c0.e("kotlinx.coroutines.scheduler.core.pool.size", RangesKt.f(a0.a(), 2), 1, 0, 8, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f67943d = c0.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f67944e = TimeUnit.SECONDS.toNanos(c0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static f f67945f = d.f67934a;

    public static final Task b(Runnable runnable, long j11, boolean z10) {
        return new TaskImpl(runnable, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String c(boolean z10) {
        return z10 ? "Blocking" : "Non-blocking";
    }
}
