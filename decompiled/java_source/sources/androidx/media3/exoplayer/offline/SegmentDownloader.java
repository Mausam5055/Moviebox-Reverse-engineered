package androidx.media3.exoplayer.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.cache.Cache;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SegmentDownloader implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w1.h f12384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.q.a f12385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f12386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a.c f12387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Cache f12388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.datasource.cache.g f12389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final PriorityTaskManager f12390g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Executor f12391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f12392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ArrayList f12393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f12394k;

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final androidx.media3.datasource.cache.i cacheWriter;
        public final androidx.media3.datasource.cache.a dataSource;

        @Nullable
        private final a progressNotifier;
        public final b segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(b bVar, androidx.media3.datasource.cache.a aVar, @Nullable a aVar2, byte[] bArr) {
            this.segment = bVar;
            this.dataSource = aVar;
            this.progressNotifier = aVar2;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new androidx.media3.datasource.cache.i(aVar, bVar.f12401b, bArr, aVar2);
        }

        @Override // androidx.media3.common.util.RunnableFutureTask
        protected void cancelWork() {
            this.cacheWriter.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.media3.common.util.RunnableFutureTask
        public Void doWork() throws IOException {
            this.cacheWriter.a();
            a aVar = this.progressNotifier;
            if (aVar == null) {
                return null;
            }
            aVar.c();
            return null;
        }
    }

    private static final class a implements androidx.media3.datasource.cache.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o.a f12395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f12396b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f12397c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f12398d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f12399e;

        public a(o.a aVar, long j11, int i11, long j12, int i12) {
            this.f12395a = aVar;
            this.f12396b = j11;
            this.f12397c = i11;
            this.f12398d = j12;
            this.f12399e = i12;
        }

        private float b() {
            long j11 = this.f12396b;
            if (j11 != -1 && j11 != 0) {
                return (this.f12398d * 100.0f) / j11;
            }
            int i11 = this.f12397c;
            if (i11 != 0) {
                return (this.f12399e * 100.0f) / i11;
            }
            return -1.0f;
        }

        @Override // androidx.media3.datasource.cache.i.a
        public void a(long j11, long j12, long j13) {
            long j14 = this.f12398d + j13;
            this.f12398d = j14;
            this.f12395a.onProgress(this.f12396b, j14, b());
        }

        public void c() {
            this.f12399e++;
            this.f12395a.onProgress(this.f12396b, this.f12398d, b());
        }
    }

    protected static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f12400a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w1.h f12401b;

        public b(long j11, w1.h hVar) {
            this.f12400a = j11;
            this.f12401b = hVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return a1.n(this.f12400a, bVar.f12400a);
        }
    }

    public SegmentDownloader(androidx.media3.common.t tVar, androidx.media3.exoplayer.upstream.q.a aVar, androidx.media3.datasource.cache.a.c cVar, Executor executor, long j11) {
        androidx.media3.common.util.a.e(tVar.f10211b);
        this.f12384a = f(tVar.f10211b.f10303a);
        this.f12385b = aVar;
        this.f12386c = new ArrayList(tVar.f10211b.f10306d);
        this.f12387d = cVar;
        this.f12391h = executor;
        this.f12388e = (Cache) androidx.media3.common.util.a.e(cVar.f());
        this.f12389f = cVar.g();
        this.f12390g = cVar.h();
        this.f12393j = new ArrayList();
        this.f12392i = a1.R0(j11);
    }

    private void c(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f12393j) {
            try {
                if (this.f12394k) {
                    throw new InterruptedException();
                }
                this.f12393j.add(runnableFutureTask);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean d(w1.h hVar, w1.h hVar2) {
        if (hVar.f77511a.equals(hVar2.f77511a)) {
            long j11 = hVar.f77518h;
            if (j11 != -1 && hVar.f77517g + j11 == hVar2.f77517g && Objects.equals(hVar.f77519i, hVar2.f77519i) && hVar.f77520j == hVar2.f77520j && hVar.f77513c == hVar2.f77513c && hVar.f77515e.equals(hVar2.f77515e)) {
                return true;
            }
        }
        return false;
    }

    protected static w1.h f(Uri uri) {
        return new w1.h.b().i(uri).b(1).a();
    }

    private static void i(List list, androidx.media3.datasource.cache.g gVar, long j11) {
        HashMap map = new HashMap();
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = (b) list.get(i12);
            String strA = gVar.a(bVar.f12401b);
            Integer num = (Integer) map.get(strA);
            b bVar2 = num == null ? null : (b) list.get(num.intValue());
            if (bVar2 == null || bVar.f12400a > bVar2.f12400a + j11 || !d(bVar2.f12401b, bVar.f12401b)) {
                map.put(strA, Integer.valueOf(i11));
                list.set(i11, bVar);
                i11++;
            } else {
                long j12 = bVar.f12401b.f77518h;
                list.set(((Integer) androidx.media3.common.util.a.e(num)).intValue(), new b(bVar2.f12400a, bVar2.f12401b.f(0L, j12 != -1 ? bVar2.f12401b.f77518h + j12 : -1L)));
            }
        }
        a1.c1(list, i11, list.size());
    }

    private void j(int i11) {
        synchronized (this.f12393j) {
            this.f12393j.remove(i11);
        }
    }

    private void k(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f12393j) {
            this.f12393j.remove(runnableFutureTask);
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public final void a(o.a aVar) {
        androidx.media3.datasource.cache.a aVarC;
        byte[] bArr;
        int i11;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager = this.f12390g;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        try {
            androidx.media3.datasource.cache.a aVarC2 = this.f12387d.c();
            q qVarG = g(aVarC2, this.f12384a, false);
            if (!this.f12386c.isEmpty()) {
                qVarG = (q) qVarG.copy(this.f12386c);
            }
            List listH = h(aVarC2, qVarG, false);
            Collections.sort(listH);
            i(listH, this.f12389f, this.f12392i);
            int size = listH.size();
            int i12 = 0;
            long j11 = 0;
            long j12 = 0;
            for (int size2 = listH.size() - 1; size2 >= 0; size2 = i11 - 1) {
                w1.h hVar = ((b) listH.get(size2)).f12401b;
                String strA = this.f12389f.a(hVar);
                long j13 = hVar.f77518h;
                if (j13 == -1) {
                    long jA = androidx.media3.datasource.cache.l.a(this.f12388e.getContentMetadata(strA));
                    if (jA != -1) {
                        j13 = jA - hVar.f77517g;
                    }
                }
                int i13 = size2;
                long jA2 = this.f12388e.a(strA, hVar.f77517g, j13);
                j12 += jA2;
                if (j13 != -1) {
                    if (j13 == jA2) {
                        i12++;
                        i11 = i13;
                        listH.remove(i11);
                    } else {
                        i11 = i13;
                    }
                    if (j11 != -1) {
                        j11 += j13;
                    }
                } else {
                    i11 = i13;
                    j11 = -1;
                }
            }
            a aVar2 = aVar != null ? new a(aVar, j11, size, j12, i12) : null;
            arrayDeque.addAll(listH);
            while (!this.f12394k && !arrayDeque.isEmpty()) {
                PriorityTaskManager priorityTaskManager2 = this.f12390g;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.b(-4000);
                }
                if (arrayDeque2.isEmpty()) {
                    aVarC = this.f12387d.c();
                    bArr = new byte[131072];
                } else {
                    SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                    aVarC = segmentDownloadRunnable.dataSource;
                    bArr = segmentDownloadRunnable.temporaryBuffer;
                }
                SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((b) arrayDeque.removeFirst(), aVarC, aVar2, bArr);
                c(segmentDownloadRunnable2);
                this.f12391h.execute(segmentDownloadRunnable2);
                for (int size3 = this.f12393j.size() - 1; size3 >= 0; size3--) {
                    SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) this.f12393j.get(size3);
                    if (arrayDeque.isEmpty() || segmentDownloadRunnable3.isDone()) {
                        try {
                            segmentDownloadRunnable3.get();
                            j(size3);
                            arrayDeque2.addLast(segmentDownloadRunnable3);
                        } catch (ExecutionException e11) {
                            Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e11.getCause());
                            if (th2 instanceof PriorityTaskManager.PriorityTooLowException) {
                                arrayDeque.addFirst(segmentDownloadRunnable3.segment);
                                j(size3);
                                arrayDeque2.addLast(segmentDownloadRunnable3);
                            } else {
                                if (th2 instanceof IOException) {
                                    throw ((IOException) th2);
                                }
                                a1.m1(th2);
                            }
                        }
                    }
                }
                segmentDownloadRunnable2.blockUntilStarted();
            }
            for (int i14 = 0; i14 < this.f12393j.size(); i14++) {
                ((RunnableFutureTask) this.f12393j.get(i14)).cancel(true);
            }
            for (int size4 = this.f12393j.size() - 1; size4 >= 0; size4--) {
                ((RunnableFutureTask) this.f12393j.get(size4)).blockUntilFinished();
                j(size4);
            }
            PriorityTaskManager priorityTaskManager3 = this.f12390g;
            if (priorityTaskManager3 != null) {
                priorityTaskManager3.d(-4000);
            }
        } catch (Throwable th3) {
            for (int i15 = 0; i15 < this.f12393j.size(); i15++) {
                ((RunnableFutureTask) this.f12393j.get(i15)).cancel(true);
            }
            for (int size5 = this.f12393j.size() - 1; size5 >= 0; size5--) {
                ((RunnableFutureTask) this.f12393j.get(size5)).blockUntilFinished();
                j(size5);
            }
            PriorityTaskManager priorityTaskManager4 = this.f12390g;
            if (priorityTaskManager4 != null) {
                priorityTaskManager4.d(-4000);
            }
            throw th3;
        }
    }

    @Override // androidx.media3.exoplayer.offline.o
    public void cancel() {
        synchronized (this.f12393j) {
            try {
                this.f12394k = true;
                for (int i11 = 0; i11 < this.f12393j.size(); i11++) {
                    ((RunnableFutureTask) this.f12393j.get(i11)).cancel(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final Object e(RunnableFutureTask runnableFutureTask, boolean z10) throws Throwable {
        if (z10) {
            runnableFutureTask.run();
            try {
                return runnableFutureTask.get();
            } catch (ExecutionException e11) {
                Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e11.getCause());
                if (th2 instanceof IOException) {
                    throw ((IOException) th2);
                }
                a1.m1(e11);
            }
        }
        while (!this.f12394k) {
            PriorityTaskManager priorityTaskManager = this.f12390g;
            if (priorityTaskManager != null) {
                priorityTaskManager.b(-4000);
            }
            c(runnableFutureTask);
            this.f12391h.execute(runnableFutureTask);
            try {
                Object obj = runnableFutureTask.get();
                runnableFutureTask.blockUntilFinished();
                k(runnableFutureTask);
                return obj;
            } catch (ExecutionException e12) {
                try {
                    Throwable th3 = (Throwable) androidx.media3.common.util.a.e(e12.getCause());
                    if (!(th3 instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th3 instanceof IOException) {
                            throw ((IOException) th3);
                        }
                        a1.m1(e12);
                    }
                    runnableFutureTask.blockUntilFinished();
                    k(runnableFutureTask);
                } catch (Throwable th4) {
                    runnableFutureTask.blockUntilFinished();
                    k(runnableFutureTask);
                    throw th4;
                }
            }
        }
        throw new InterruptedException();
    }

    protected final q g(final androidx.media3.datasource.a aVar, final w1.h hVar, boolean z10) {
        return (q) e(new RunnableFutureTask<q, IOException>() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media3.common.util.RunnableFutureTask
            public q doWork() throws IOException {
                return (q) androidx.media3.exoplayer.upstream.q.e(aVar, SegmentDownloader.this.f12385b, hVar, 4);
            }
        }, z10);
    }

    protected abstract List h(androidx.media3.datasource.a aVar, q qVar, boolean z10);

    @Override // androidx.media3.exoplayer.offline.o
    public final void remove() {
        androidx.media3.datasource.cache.a aVarD = this.f12387d.d();
        try {
            List listH = h(aVarD, g(aVarD, this.f12384a, true), true);
            for (int i11 = 0; i11 < listH.size(); i11++) {
                this.f12388e.e(this.f12389f.a(((b) listH.get(i11)).f12401b));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            this.f12388e.e(this.f12389f.a(this.f12384a));
        }
    }
}
