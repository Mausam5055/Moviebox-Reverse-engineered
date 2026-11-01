package androidx.work.impl.background.greedy;

import androidx.work.d0;
import androidx.work.impl.b1;
import androidx.work.impl.y;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f15567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b1 f15568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f15569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f15570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f15571e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(d0 runnableScheduler, b1 launcher) {
        this(runnableScheduler, launcher, 0L, 4, null);
        Intrinsics.h(runnableScheduler, "runnableScheduler");
        Intrinsics.h(launcher, "launcher");
    }

    public c(d0 runnableScheduler, b1 launcher, long j11) {
        Intrinsics.h(runnableScheduler, "runnableScheduler");
        Intrinsics.h(launcher, "launcher");
        this.f15567a = runnableScheduler;
        this.f15568b = launcher;
        this.f15569c = j11;
        this.f15570d = new Object();
        this.f15571e = new LinkedHashMap();
    }

    public /* synthetic */ c(d0 d0Var, b1 b1Var, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(d0Var, b1Var, (i11 & 4) != 0 ? TimeUnit.MINUTES.toMillis(90L) : j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c cVar, y yVar) {
        cVar.f15568b.d(yVar, 3);
    }

    public final void b(y token) {
        Runnable runnable;
        Intrinsics.h(token, "token");
        synchronized (this.f15570d) {
            runnable = (Runnable) this.f15571e.remove(token);
        }
        if (runnable != null) {
            this.f15567a.a(runnable);
        }
    }

    public final void c(final y token) {
        Intrinsics.h(token, "token");
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.greedy.b
            @Override // java.lang.Runnable
            public final void run() {
                c.d(this.f15565a, token);
            }
        };
        synchronized (this.f15570d) {
        }
        this.f15567a.b(this.f15569c, runnable);
    }
}
