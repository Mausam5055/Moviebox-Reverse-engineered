package com.transsion.player.shorttv.preload;

import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.t;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoProgressiveDownloader implements androidx.media3.exoplayer.offline.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f48501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w1.h f48502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a f48503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.datasource.cache.i f48504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PriorityTaskManager f48505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.exoplayer.offline.o.a f48506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile RunnableFutureTask f48507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f48508h;

    public VideoProgressiveDownloader(t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f48501a = (Executor) androidx.media3.common.util.a.e(executor);
        androidx.media3.common.util.a.e(tVar.f10211b);
        w1.h hVarA = new w1.h.b().i(tVar.f10211b.f10303a).f(tVar.f10211b.f10307e).b(4).a();
        this.f48502b = hVarA;
        androidx.media3.datasource.cache.a aVarC = cVar.c();
        this.f48503c = aVarC;
        this.f48504d = new androidx.media3.datasource.cache.i(aVarC, hVarA, null, new androidx.media3.datasource.cache.i.a() { // from class: com.transsion.player.shorttv.preload.r
            @Override // androidx.media3.datasource.cache.i.a
            public final void a(long j11, long j12, long j13) {
                this.f48548a.d(j11, j12, j13);
            }
        });
        this.f48505e = cVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j11, long j12, long j13) {
        androidx.media3.exoplayer.offline.o.a aVar = this.f48506f;
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
    public void a(androidx.media3.exoplayer.offline.o.a aVar) {
        this.f48506f = aVar;
        PriorityTaskManager priorityTaskManager = this.f48505e;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        boolean z10 = false;
        while (!z10) {
            if (this.f48508h) {
                break;
            }
            this.f48507g = new RunnableFutureTask<Void, IOException>() { // from class: com.transsion.player.shorttv.preload.VideoProgressiveDownloader.1
                @Override // androidx.media3.common.util.RunnableFutureTask
                protected void cancelWork() {
                    VideoProgressiveDownloader.this.f48504d.b();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.media3.common.util.RunnableFutureTask
                public Void doWork() throws IOException {
                    VideoProgressiveDownloader.this.f48504d.a();
                    return null;
                }
            };
            PriorityTaskManager priorityTaskManager2 = this.f48505e;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-4000);
            }
            this.f48501a.execute(this.f48507g);
            try {
                this.f48507g.get();
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
        ((RunnableFutureTask) androidx.media3.common.util.a.e(this.f48507g)).blockUntilFinished();
        PriorityTaskManager priorityTaskManager3 = this.f48505e;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-4000);
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public void cancel() {
        this.f48508h = true;
        RunnableFutureTask runnableFutureTask = this.f48507g;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public void remove() {
    }
}
