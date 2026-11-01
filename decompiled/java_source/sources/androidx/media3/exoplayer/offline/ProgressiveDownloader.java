package androidx.media3.exoplayer.offline;

import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressiveDownloader implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f12376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w1.h f12377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a f12378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.datasource.cache.i f12379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PriorityTaskManager f12380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o.a f12381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile RunnableFutureTask f12382g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f12383h;

    public ProgressiveDownloader(androidx.media3.common.t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f12376a = (Executor) androidx.media3.common.util.a.e(executor);
        androidx.media3.common.util.a.e(tVar.f10211b);
        w1.h hVarA = new w1.h.b().i(tVar.f10211b.f10303a).f(tVar.f10211b.f10307e).b(4).a();
        this.f12377b = hVarA;
        androidx.media3.datasource.cache.a aVarC = cVar.c();
        this.f12378c = aVarC;
        this.f12379d = new androidx.media3.datasource.cache.i(aVarC, hVarA, null, new androidx.media3.datasource.cache.i.a() { // from class: androidx.media3.exoplayer.offline.s
            @Override // androidx.media3.datasource.cache.i.a
            public final void a(long j11, long j12, long j13) {
                this.f12431a.d(j11, j12, j13);
            }
        });
        this.f12380e = cVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j11, long j12, long j13) {
        o.a aVar = this.f12381f;
        if (aVar == null) {
            return;
        }
        aVar.onProgress(j11, j12, (j11 == -1 || j11 == 0) ? -1.0f : (j12 * 100.0f) / j11);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0021 */
    @Override // androidx.media3.exoplayer.offline.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(o.a aVar) {
        this.f12381f = aVar;
        PriorityTaskManager priorityTaskManager = this.f12380e;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        boolean z10 = false;
        while (!z10) {
            if (this.f12383h) {
                break;
            }
            this.f12382g = new RunnableFutureTask<Void, IOException>() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader.1
                @Override // androidx.media3.common.util.RunnableFutureTask
                protected void cancelWork() {
                    ProgressiveDownloader.this.f12379d.b();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.media3.common.util.RunnableFutureTask
                public Void doWork() throws IOException {
                    ProgressiveDownloader.this.f12379d.a();
                    return null;
                }
            };
            PriorityTaskManager priorityTaskManager2 = this.f12380e;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-4000);
            }
            this.f12376a.execute(this.f12382g);
            try {
                this.f12382g.get();
                z10 = true;
            } catch (ExecutionException e11) {
                Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e11.getCause());
                if (!(th2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                    if (th2 instanceof IOException) {
                        throw ((IOException) th2);
                    }
                    a1.m1(th2);
                }
            }
        }
        ((RunnableFutureTask) androidx.media3.common.util.a.e(this.f12382g)).blockUntilFinished();
        PriorityTaskManager priorityTaskManager3 = this.f12380e;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-4000);
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public void cancel() {
        this.f12383h = true;
        RunnableFutureTask runnableFutureTask = this.f12382g;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public void remove() {
        this.f12378c.e().e(this.f12378c.f().a(this.f12377b));
    }
}
