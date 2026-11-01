package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.g;
import com.google.android.exoplayer2.upstream.cache.i;
import com.google.android.exoplayer2.upstream.cache.l;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.n;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SegmentDownloader implements com.google.android.exoplayer2.offline.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f25565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0.a f25566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f25567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.cache.a.c f25568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Cache f25569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g f25570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final PriorityTaskManager f25571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Executor f25572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayList f25573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f25574j;

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final i cacheWriter;
        public final com.google.android.exoplayer2.upstream.cache.a dataSource;

        @Nullable
        private final a progressNotifier;
        public final b segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(b bVar, com.google.android.exoplayer2.upstream.cache.a aVar, @Nullable a aVar2, byte[] bArr) {
            this.segment = bVar;
            this.dataSource = aVar;
            this.progressNotifier = aVar2;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new i(aVar, bVar.f25581b, bArr, aVar2);
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        protected void cancelWork() {
            this.cacheWriter.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
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

    private static final class a implements i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.offline.b.a f25575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f25576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f25577c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f25578d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f25579e;

        public a(com.google.android.exoplayer2.offline.b.a aVar, long j11, int i11, long j12, int i12) {
            this.f25575a = aVar;
            this.f25576b = j11;
            this.f25577c = i11;
            this.f25578d = j12;
            this.f25579e = i12;
        }

        private float b() {
            long j11 = this.f25576b;
            if (j11 != -1 && j11 != 0) {
                return (this.f25578d * 100.0f) / j11;
            }
            int i11 = this.f25577c;
            if (i11 != 0) {
                return (this.f25579e * 100.0f) / i11;
            }
            return -1.0f;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.a
        public void a(long j11, long j12, long j13) {
            long j14 = this.f25578d + j13;
            this.f25578d = j14;
            this.f25575a.onProgress(this.f25576b, j14, b());
        }

        public void c() {
            this.f25579e++;
            this.f25575a.onProgress(this.f25576b, this.f25578d, b());
        }
    }

    protected static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f25580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final n f25581b;

        public b(long j11, n nVar) {
            this.f25580a = j11;
            this.f25581b = nVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return p0.o(this.f25580a, bVar.f25580a);
        }
    }

    public SegmentDownloader(v1 v1Var, b0.a aVar, com.google.android.exoplayer2.upstream.cache.a.c cVar, Executor executor) {
        com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        this.f25565a = f(v1Var.f27709b.f27772a);
        this.f25566b = aVar;
        this.f25567c = new ArrayList(v1Var.f27709b.f27775d);
        this.f25568d = cVar;
        this.f25572h = executor;
        this.f25569e = (Cache) com.google.android.exoplayer2.util.a.e(cVar.e());
        this.f25570f = cVar.f();
        this.f25571g = cVar.g();
        this.f25573i = new ArrayList();
    }

    private void c(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f25573i) {
            try {
                if (this.f25574j) {
                    throw new InterruptedException();
                }
                this.f25573i.add(runnableFutureTask);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean d(n nVar, n nVar2) {
        if (nVar.f27437a.equals(nVar2.f27437a)) {
            long j11 = nVar.f27444h;
            if (j11 != -1 && nVar.f27443g + j11 == nVar2.f27443g && p0.c(nVar.f27445i, nVar2.f27445i) && nVar.f27446j == nVar2.f27446j && nVar.f27439c == nVar2.f27439c && nVar.f27441e.equals(nVar2.f27441e)) {
                return true;
            }
        }
        return false;
    }

    protected static n f(Uri uri) {
        return new n.b().i(uri).b(1).a();
    }

    private static void i(List list, g gVar) {
        HashMap map = new HashMap();
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = (b) list.get(i12);
            String strA = gVar.a(bVar.f25581b);
            Integer num = (Integer) map.get(strA);
            b bVar2 = num == null ? null : (b) list.get(num.intValue());
            if (bVar2 == null || bVar.f25580a > bVar2.f25580a + 20000000 || !d(bVar2.f25581b, bVar.f25581b)) {
                map.put(strA, Integer.valueOf(i11));
                list.set(i11, bVar);
                i11++;
            } else {
                long j11 = bVar.f25581b.f27444h;
                list.set(((Integer) com.google.android.exoplayer2.util.a.e(num)).intValue(), new b(bVar2.f25580a, bVar2.f25581b.f(0L, j11 != -1 ? bVar2.f25581b.f27444h + j11 : -1L)));
            }
        }
        p0.M0(list, i11, list.size());
    }

    private void j(int i11) {
        synchronized (this.f25573i) {
            this.f25573i.remove(i11);
        }
    }

    private void k(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f25573i) {
            this.f25573i.remove(runnableFutureTask);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00df */
    @Override // com.google.android.exoplayer2.offline.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.google.android.exoplayer2.offline.b.a aVar) throws Throwable {
        SegmentDownloader segmentDownloader;
        com.google.android.exoplayer2.upstream.cache.a aVarB;
        byte[] bArr;
        SegmentDownloader segmentDownloader2 = this;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager = segmentDownloader2.f25571g;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-1000);
        }
        try {
            com.google.android.exoplayer2.upstream.cache.a aVarB2 = segmentDownloader2.f25568d.b();
            c cVarG = segmentDownloader2.g(aVarB2, segmentDownloader2.f25565a, false);
            if (!segmentDownloader2.f25567c.isEmpty()) {
                cVarG = (c) cVarG.copy(segmentDownloader2.f25567c);
            }
            List listH = segmentDownloader2.h(aVarB2, cVarG, false);
            Collections.sort(listH);
            i(listH, segmentDownloader2.f25570f);
            int size = listH.size();
            int size2 = listH.size() - 1;
            int i11 = 0;
            long j11 = 0;
            long j12 = 0;
            while (size2 >= 0) {
                try {
                    n nVar = ((b) listH.get(size2)).f25581b;
                    String strA = segmentDownloader2.f25570f.a(nVar);
                    long j13 = nVar.f27444h;
                    if (j13 == -1) {
                        long jA = l.a(segmentDownloader2.f25569e.getContentMetadata(strA));
                        if (jA != -1) {
                            j13 = jA - nVar.f27443g;
                        }
                    }
                    ArrayDeque arrayDeque3 = arrayDeque;
                    long jA2 = segmentDownloader2.f25569e.a(strA, nVar.f27443g, j13);
                    j12 += jA2;
                    if (j13 != -1) {
                        if (j13 == jA2) {
                            i11++;
                            listH.remove(size2);
                        }
                        if (j11 != -1) {
                            j11 += j13;
                        }
                    } else {
                        j11 = -1;
                    }
                    size2--;
                    segmentDownloader2 = this;
                    arrayDeque = arrayDeque3;
                } catch (Throwable th2) {
                    th = th2;
                    segmentDownloader = this;
                    for (int i12 = 0; i12 < segmentDownloader.f25573i.size(); i12++) {
                        ((RunnableFutureTask) segmentDownloader.f25573i.get(i12)).cancel(true);
                    }
                    for (int size3 = segmentDownloader.f25573i.size() - 1; size3 >= 0; size3--) {
                        ((RunnableFutureTask) segmentDownloader.f25573i.get(size3)).blockUntilFinished();
                        segmentDownloader.j(size3);
                    }
                    PriorityTaskManager priorityTaskManager2 = segmentDownloader.f25571g;
                    if (priorityTaskManager2 != null) {
                        priorityTaskManager2.d(-1000);
                    }
                    throw th;
                }
            }
            ArrayDeque arrayDeque4 = arrayDeque;
            a aVar2 = aVar != null ? new a(aVar, j11, size, j12, i11) : null;
            arrayDeque4.addAll(listH);
            segmentDownloader = this;
            while (!segmentDownloader.f25574j && !arrayDeque4.isEmpty()) {
                PriorityTaskManager priorityTaskManager3 = segmentDownloader.f25571g;
                if (priorityTaskManager3 != null) {
                    priorityTaskManager3.b(-1000);
                }
                if (arrayDeque2.isEmpty()) {
                    aVarB = segmentDownloader.f25568d.b();
                    bArr = new byte[131072];
                } else {
                    SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                    aVarB = segmentDownloadRunnable.dataSource;
                    bArr = segmentDownloadRunnable.temporaryBuffer;
                }
                SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((b) arrayDeque4.removeFirst(), aVarB, aVar2, bArr);
                segmentDownloader.c(segmentDownloadRunnable2);
                segmentDownloader.f25572h.execute(segmentDownloadRunnable2);
                for (int size4 = segmentDownloader.f25573i.size() - 1; size4 >= 0; size4--) {
                    SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) segmentDownloader.f25573i.get(size4);
                    if (arrayDeque4.isEmpty() || segmentDownloadRunnable3.isDone()) {
                        try {
                            segmentDownloadRunnable3.get();
                            segmentDownloader.j(size4);
                            arrayDeque2.addLast(segmentDownloadRunnable3);
                        } catch (ExecutionException e11) {
                            Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(e11.getCause());
                            if (th3 instanceof PriorityTaskManager.PriorityTooLowException) {
                                arrayDeque4.addFirst(segmentDownloadRunnable3.segment);
                                segmentDownloader.j(size4);
                                arrayDeque2.addLast(segmentDownloadRunnable3);
                            } else {
                                if (th3 instanceof IOException) {
                                    throw ((IOException) th3);
                                }
                                p0.Q0(th3);
                            }
                        }
                    }
                }
                segmentDownloadRunnable2.blockUntilStarted();
            }
            for (int i13 = 0; i13 < segmentDownloader.f25573i.size(); i13++) {
                ((RunnableFutureTask) segmentDownloader.f25573i.get(i13)).cancel(true);
            }
            for (int size5 = segmentDownloader.f25573i.size() - 1; size5 >= 0; size5--) {
                ((RunnableFutureTask) segmentDownloader.f25573i.get(size5)).blockUntilFinished();
                segmentDownloader.j(size5);
            }
            PriorityTaskManager priorityTaskManager4 = segmentDownloader.f25571g;
            if (priorityTaskManager4 != null) {
                priorityTaskManager4.d(-1000);
            }
        } catch (Throwable th4) {
            th = th4;
            segmentDownloader = segmentDownloader2;
        }
    }

    @Override // com.google.android.exoplayer2.offline.b
    public void cancel() {
        synchronized (this.f25573i) {
            try {
                this.f25574j = true;
                for (int i11 = 0; i11 < this.f25573i.size(); i11++) {
                    ((RunnableFutureTask) this.f25573i.get(i11)).cancel(true);
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
                Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(e11.getCause());
                if (th2 instanceof IOException) {
                    throw ((IOException) th2);
                }
                p0.Q0(e11);
            }
        }
        while (!this.f25574j) {
            PriorityTaskManager priorityTaskManager = this.f25571g;
            if (priorityTaskManager != null) {
                priorityTaskManager.b(-1000);
            }
            c(runnableFutureTask);
            this.f25572h.execute(runnableFutureTask);
            try {
                Object obj = runnableFutureTask.get();
                runnableFutureTask.blockUntilFinished();
                k(runnableFutureTask);
                return obj;
            } catch (ExecutionException e12) {
                try {
                    Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(e12.getCause());
                    if (!(th3 instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th3 instanceof IOException) {
                            throw ((IOException) th3);
                        }
                        p0.Q0(e12);
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

    protected final c g(final k kVar, final n nVar, boolean z10) {
        return (c) e(new RunnableFutureTask<c, IOException>() { // from class: com.google.android.exoplayer2.offline.SegmentDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public c doWork() throws IOException {
                return (c) b0.e(kVar, SegmentDownloader.this.f25566b, nVar, 4);
            }
        }, z10);
    }

    protected abstract List h(k kVar, c cVar, boolean z10);

    @Override // com.google.android.exoplayer2.offline.b
    public final void remove() {
        com.google.android.exoplayer2.upstream.cache.a aVarC = this.f25568d.c();
        try {
            List listH = h(aVarC, g(aVarC, this.f25565a, true), true);
            for (int i11 = 0; i11 < listH.size(); i11++) {
                this.f25569e.e(this.f25570f.a(((b) listH.get(i11)).f25581b));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            this.f25569e.e(this.f25570f.a(this.f25565a));
        }
    }
}
