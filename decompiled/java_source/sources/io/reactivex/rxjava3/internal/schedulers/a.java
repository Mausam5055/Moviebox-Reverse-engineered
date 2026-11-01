package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends Scheduler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final b f65497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final RxThreadFactory f65498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f65499g = g(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx3.computation-threads", 0).intValue());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final c f65500h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ThreadFactory f65501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicReference f65502d;

    /* JADX INFO: renamed from: io.reactivex.rxjava3.internal.schedulers.a$a, reason: collision with other inner class name */
    static final class C0792a extends Scheduler.Worker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final mz.a f65503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final io.reactivex.rxjava3.disposables.a f65504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final mz.a f65505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final c f65506d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile boolean f65507e;

        C0792a(c cVar) {
            this.f65506d = cVar;
            mz.a aVar = new mz.a();
            this.f65503a = aVar;
            io.reactivex.rxjava3.disposables.a aVar2 = new io.reactivex.rxjava3.disposables.a();
            this.f65504b = aVar2;
            mz.a aVar3 = new mz.a();
            this.f65505c = aVar3;
            aVar3.b(aVar);
            aVar3.b(aVar2);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.f65507e) {
                return;
            }
            this.f65507e = true;
            this.f65505c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65507e;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return this.f65507e ? EmptyDisposable.INSTANCE : this.f65506d.a(runnable, 0L, TimeUnit.MILLISECONDS, this.f65503a);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            return this.f65507e ? EmptyDisposable.INSTANCE : this.f65506d.a(runnable, j11, timeUnit, this.f65504b);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f65508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c[] f65509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f65510c;

        b(int i11, ThreadFactory threadFactory) {
            this.f65508a = i11;
            this.f65509b = new c[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                this.f65509b[i12] = new c(threadFactory);
            }
        }

        public c a() {
            int i11 = this.f65508a;
            if (i11 == 0) {
                return a.f65500h;
            }
            c[] cVarArr = this.f65509b;
            long j11 = this.f65510c;
            this.f65510c = 1 + j11;
            return cVarArr[(int) (j11 % ((long) i11))];
        }

        public void b() {
            for (c cVar : this.f65509b) {
                cVar.dispose();
            }
        }
    }

    static final class c extends e {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        f65500h = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx3.computation-priority", 5).intValue())), true);
        f65498f = rxThreadFactory;
        b bVar = new b(0, rxThreadFactory);
        f65497e = bVar;
        bVar.b();
    }

    public a() {
        this(f65498f);
    }

    public a(ThreadFactory threadFactory) {
        this.f65501c = threadFactory;
        this.f65502d = new AtomicReference(f65497e);
        h();
    }

    static int g(int i11, int i12) {
        return (i12 <= 0 || i12 > i11) ? i11 : i12;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new C0792a(((b) this.f65502d.get()).a());
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        return ((b) this.f65502d.get()).a().b(runnable, j11, timeUnit);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
        return ((b) this.f65502d.get()).a().c(runnable, j11, j12, timeUnit);
    }

    public void h() {
        b bVar = new b(f65499g, this.f65501c);
        if (j0.a(this.f65502d, f65497e, bVar)) {
            return;
        }
        bVar.b();
    }
}
