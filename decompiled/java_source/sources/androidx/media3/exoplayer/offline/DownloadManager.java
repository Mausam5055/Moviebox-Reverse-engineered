package androidx.media3.exoplayer.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadManager {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Requirements f12309q = new Requirements(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f12311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f12312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f12313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f2.c.InterfaceC0754c f12314e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12316g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12317h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f12318i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f12322m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f12323n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f2.c f12325p;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f12320k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f12321l = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f12319j = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f12324o = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CopyOnWriteArraySet f12315f = new CopyOnWriteArraySet();

    private static class Task extends Thread implements o.a {
        private long contentLength;
        private final l downloadProgress;
        private final o downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile c internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private Task(DownloadRequest downloadRequest, o oVar, l lVar, boolean z10, int i11, c cVar) {
            this.request = downloadRequest;
            this.downloader = oVar;
            this.downloadProgress = lVar;
            this.isRemove = z10;
            this.minRetryCount = i11;
            this.internalHandler = cVar;
            this.contentLength = -1L;
        }

        private static int getRetryDelayMillis(int i11) {
            return Math.min((i11 - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            if (z10) {
                this.internalHandler = null;
            }
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override // androidx.media3.exoplayer.offline.o.a
        public void onProgress(long j11, long j12, float f11) {
            this.downloadProgress.f12424a = j12;
            this.downloadProgress.f12425b = f11;
            if (j11 != this.contentLength) {
                this.contentLength = j11;
                c cVar = this.internalHandler;
                if (cVar != null) {
                    cVar.obtainMessage(11, (int) (j11 >> 32), (int) j11, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                } else {
                    long j11 = -1;
                    int i11 = 0;
                    while (!this.isCanceled) {
                        try {
                            this.downloader.a(this);
                            break;
                        } catch (IOException e11) {
                            if (!this.isCanceled) {
                                long j12 = this.downloadProgress.f12424a;
                                if (j12 != j11) {
                                    i11 = 0;
                                    j11 = j12;
                                }
                                i11++;
                                if (i11 > this.minRetryCount) {
                                    throw e11;
                                }
                                Thread.sleep(getRetryDelayMillis(i11));
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e12) {
                this.finalException = e12;
            }
            c cVar = this.internalHandler;
            if (cVar != null) {
                cVar.obtainMessage(10, this).sendToTarget();
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.exoplayer.offline.c f12326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f12327b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f12328c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Exception f12329d;

        public b(androidx.media3.exoplayer.offline.c cVar, boolean z10, List list, Exception exc) {
            this.f12326a = cVar;
            this.f12327b = z10;
            this.f12328c = list;
            this.f12329d = exc;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f12330a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HandlerThread f12331b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final t f12332c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final p f12333d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Handler f12334e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ArrayList f12335f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final HashMap f12336g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f12337h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f12338i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f12339j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f12340k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f12341l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f12342m;

        public c(HandlerThread handlerThread, t tVar, p pVar, Handler handler, int i11, int i12, boolean z10) {
            super(handlerThread.getLooper());
            this.f12331b = handlerThread;
            this.f12332c = tVar;
            this.f12333d = pVar;
            this.f12334e = handler;
            this.f12339j = i11;
            this.f12340k = i12;
            this.f12338i = z10;
            this.f12335f = new ArrayList();
            this.f12336g = new HashMap();
        }

        private void A(Task task) {
            if (task != null) {
                androidx.media3.common.util.a.g(!task.isRemove);
                task.cancel(false);
            }
        }

        private void B() {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f12335f.size(); i12++) {
                androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) this.f12335f.get(i12);
                Task taskY = (Task) this.f12336g.get(cVar.f12413a.f12343id);
                int i13 = cVar.f12414b;
                if (i13 == 0) {
                    taskY = y(taskY, cVar);
                } else if (i13 == 1) {
                    A(taskY);
                } else if (i13 == 2) {
                    androidx.media3.common.util.a.e(taskY);
                    x(taskY, cVar, i11);
                } else {
                    if (i13 != 5 && i13 != 7) {
                        throw new IllegalStateException();
                    }
                    z(taskY, cVar);
                }
                if (taskY != null && !taskY.isRemove) {
                    i11++;
                }
            }
        }

        private void C() {
            for (int i11 = 0; i11 < this.f12335f.size(); i11++) {
                androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) this.f12335f.get(i11);
                if (cVar.f12414b == 2) {
                    try {
                        this.f12332c.b(cVar);
                    } catch (IOException e11) {
                        u.d("DownloadManager", "Failed to update index.", e11);
                    }
                }
            }
            sendEmptyMessageDelayed(12, 5000L);
        }

        private void b(DownloadRequest downloadRequest, int i11) {
            androidx.media3.exoplayer.offline.c cVarF = f(downloadRequest.f12343id, true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (cVarF != null) {
                m(DownloadManager.n(cVarF, downloadRequest, i11, jCurrentTimeMillis));
            } else {
                m(new androidx.media3.exoplayer.offline.c(downloadRequest, i11 == 0 ? 0 : 1, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i11, 0));
            }
            B();
        }

        private boolean c() {
            return !this.f12338i && this.f12337h == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int d(androidx.media3.exoplayer.offline.c cVar, androidx.media3.exoplayer.offline.c cVar2) {
            return a1.n(cVar.f12415c, cVar2.f12415c);
        }

        private static androidx.media3.exoplayer.offline.c e(androidx.media3.exoplayer.offline.c cVar, int i11, int i12) {
            return new androidx.media3.exoplayer.offline.c(cVar.f12413a, i11, cVar.f12415c, System.currentTimeMillis(), cVar.f12417e, i12, 0, cVar.f12420h);
        }

        private androidx.media3.exoplayer.offline.c f(String str, boolean z10) {
            int iG = g(str);
            if (iG != -1) {
                return (androidx.media3.exoplayer.offline.c) this.f12335f.get(iG);
            }
            if (!z10) {
                return null;
            }
            try {
                return this.f12332c.h(str);
            } catch (IOException e11) {
                u.d("DownloadManager", "Failed to load download: " + str, e11);
                return null;
            }
        }

        private int g(String str) {
            for (int i11 = 0; i11 < this.f12335f.size(); i11++) {
                if (((androidx.media3.exoplayer.offline.c) this.f12335f.get(i11)).f12413a.f12343id.equals(str)) {
                    return i11;
                }
            }
            return -1;
        }

        private void h(int i11) {
            this.f12337h = i11;
            e eVarE = null;
            try {
                try {
                    this.f12332c.g();
                    eVarE = this.f12332c.e(0, 1, 2, 5, 7);
                    while (eVarE.moveToNext()) {
                        this.f12335f.add(eVarE.N());
                    }
                } catch (IOException e11) {
                    u.d("DownloadManager", "Failed to load index.", e11);
                    this.f12335f.clear();
                }
                a1.m(eVarE);
                this.f12334e.obtainMessage(1, new ArrayList(this.f12335f)).sendToTarget();
                B();
            } catch (Throwable th2) {
                a1.m(eVarE);
                throw th2;
            }
        }

        private void i(Task task, long j11) {
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) androidx.media3.common.util.a.e(f(task.request.f12343id, false));
            if (j11 == cVar.f12417e || j11 == -1) {
                return;
            }
            m(new androidx.media3.exoplayer.offline.c(cVar.f12413a, cVar.f12414b, cVar.f12415c, System.currentTimeMillis(), j11, cVar.f12418f, cVar.f12419g, cVar.f12420h));
        }

        private void j(androidx.media3.exoplayer.offline.c cVar, Exception exc) {
            androidx.media3.exoplayer.offline.c cVar2 = new androidx.media3.exoplayer.offline.c(cVar.f12413a, exc == null ? 3 : 4, cVar.f12415c, System.currentTimeMillis(), cVar.f12417e, cVar.f12418f, exc == null ? 0 : 1, cVar.f12420h);
            this.f12335f.remove(g(cVar2.f12413a.f12343id));
            try {
                this.f12332c.b(cVar2);
            } catch (IOException e11) {
                u.d("DownloadManager", "Failed to update index.", e11);
            }
            this.f12334e.obtainMessage(3, new b(cVar2, false, new ArrayList(this.f12335f), exc)).sendToTarget();
        }

        private void k(androidx.media3.exoplayer.offline.c cVar) {
            if (cVar.f12414b == 7) {
                int i11 = cVar.f12418f;
                n(cVar, i11 == 0 ? 0 : 1, i11);
                B();
            } else {
                this.f12335f.remove(g(cVar.f12413a.f12343id));
                try {
                    this.f12332c.c(cVar.f12413a.f12343id);
                } catch (IOException unused) {
                    u.c("DownloadManager", "Failed to remove from database");
                }
                this.f12334e.obtainMessage(3, new b(cVar, true, new ArrayList(this.f12335f), null)).sendToTarget();
            }
        }

        private void l(Task task) {
            String str = task.request.f12343id;
            this.f12336g.remove(str);
            boolean z10 = task.isRemove;
            if (z10) {
                this.f12342m = false;
            } else {
                int i11 = this.f12341l - 1;
                this.f12341l = i11;
                if (i11 == 0) {
                    removeMessages(12);
                }
            }
            if (task.isCanceled) {
                B();
                return;
            }
            Exception exc = task.finalException;
            if (exc != null) {
                u.d("DownloadManager", "Task failed: " + task.request + ", " + z10, exc);
            }
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) androidx.media3.common.util.a.e(f(str, false));
            int i12 = cVar.f12414b;
            if (i12 == 2) {
                androidx.media3.common.util.a.g(!z10);
                j(cVar, exc);
            } else {
                if (i12 != 5 && i12 != 7) {
                    throw new IllegalStateException();
                }
                androidx.media3.common.util.a.g(z10);
                k(cVar);
            }
            B();
        }

        private androidx.media3.exoplayer.offline.c m(androidx.media3.exoplayer.offline.c cVar) {
            int i11 = cVar.f12414b;
            androidx.media3.common.util.a.g((i11 == 3 || i11 == 4) ? false : true);
            int iG = g(cVar.f12413a.f12343id);
            if (iG == -1) {
                this.f12335f.add(cVar);
                Collections.sort(this.f12335f, new i());
            } else {
                boolean z10 = cVar.f12415c != ((androidx.media3.exoplayer.offline.c) this.f12335f.get(iG)).f12415c;
                this.f12335f.set(iG, cVar);
                if (z10) {
                    Collections.sort(this.f12335f, new i());
                }
            }
            try {
                this.f12332c.b(cVar);
            } catch (IOException e11) {
                u.d("DownloadManager", "Failed to update index.", e11);
            }
            this.f12334e.obtainMessage(3, new b(cVar, false, new ArrayList(this.f12335f), null)).sendToTarget();
            return cVar;
        }

        private androidx.media3.exoplayer.offline.c n(androidx.media3.exoplayer.offline.c cVar, int i11, int i12) {
            androidx.media3.common.util.a.g((i11 == 3 || i11 == 4) ? false : true);
            return m(e(cVar, i11, i12));
        }

        private void o() {
            Iterator it = this.f12336g.values().iterator();
            while (it.hasNext()) {
                ((Task) it.next()).cancel(true);
            }
            try {
                this.f12332c.g();
            } catch (IOException e11) {
                u.d("DownloadManager", "Failed to update index.", e11);
            }
            this.f12335f.clear();
            this.f12331b.quit();
            synchronized (this) {
                this.f12330a = true;
                notifyAll();
            }
        }

        private void p() {
            ArrayList arrayList = new ArrayList();
            try {
                e eVarE = this.f12332c.e(3, 4);
                while (eVarE.moveToNext()) {
                    try {
                        arrayList.add(eVarE.N());
                    } catch (Throwable th2) {
                        if (eVarE != null) {
                            try {
                                eVarE.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
                eVarE.close();
            } catch (IOException unused) {
                u.c("DownloadManager", "Failed to load downloads.");
            }
            for (int i11 = 0; i11 < this.f12335f.size(); i11++) {
                ArrayList arrayList2 = this.f12335f;
                arrayList2.set(i11, e((androidx.media3.exoplayer.offline.c) arrayList2.get(i11), 5, 0));
            }
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                this.f12335f.add(e((androidx.media3.exoplayer.offline.c) arrayList.get(i12), 5, 0));
            }
            Collections.sort(this.f12335f, new i());
            try {
                this.f12332c.f();
            } catch (IOException e11) {
                u.d("DownloadManager", "Failed to update index.", e11);
            }
            ArrayList arrayList3 = new ArrayList(this.f12335f);
            for (int i13 = 0; i13 < this.f12335f.size(); i13++) {
                this.f12334e.obtainMessage(3, new b((androidx.media3.exoplayer.offline.c) this.f12335f.get(i13), false, arrayList3, null)).sendToTarget();
            }
            B();
        }

        private void q(String str) {
            androidx.media3.exoplayer.offline.c cVarF = f(str, true);
            if (cVarF != null) {
                n(cVarF, 5, 0);
                B();
            } else {
                u.c("DownloadManager", "Failed to remove nonexistent download: " + str);
            }
        }

        private void r(boolean z10) {
            this.f12338i = z10;
            B();
        }

        private void s(int i11) {
            this.f12339j = i11;
            B();
        }

        private void t(int i11) {
            this.f12340k = i11;
        }

        private void u(int i11) {
            this.f12337h = i11;
            B();
        }

        private void v(androidx.media3.exoplayer.offline.c cVar, int i11) {
            if (i11 == 0) {
                if (cVar.f12414b == 1) {
                    n(cVar, 0, 0);
                }
            } else if (i11 != cVar.f12418f) {
                int i12 = cVar.f12414b;
                if (i12 == 0 || i12 == 2) {
                    i12 = 1;
                }
                m(new androidx.media3.exoplayer.offline.c(cVar.f12413a, i12, cVar.f12415c, System.currentTimeMillis(), cVar.f12417e, i11, 0, cVar.f12420h));
            }
        }

        private void w(String str, int i11) {
            if (str == null) {
                for (int i12 = 0; i12 < this.f12335f.size(); i12++) {
                    v((androidx.media3.exoplayer.offline.c) this.f12335f.get(i12), i11);
                }
                try {
                    this.f12332c.d(i11);
                } catch (IOException e11) {
                    u.d("DownloadManager", "Failed to set manual stop reason", e11);
                }
            } else {
                androidx.media3.exoplayer.offline.c cVarF = f(str, false);
                if (cVarF != null) {
                    v(cVarF, i11);
                } else {
                    try {
                        this.f12332c.a(str, i11);
                    } catch (IOException e12) {
                        u.d("DownloadManager", "Failed to set manual stop reason: " + str, e12);
                    }
                }
            }
            B();
        }

        private void x(Task task, androidx.media3.exoplayer.offline.c cVar, int i11) {
            androidx.media3.common.util.a.g(!task.isRemove);
            if (!c() || i11 >= this.f12339j) {
                n(cVar, 0, 0);
                task.cancel(false);
            }
        }

        private Task y(Task task, androidx.media3.exoplayer.offline.c cVar) {
            if (task != null) {
                androidx.media3.common.util.a.g(!task.isRemove);
                task.cancel(false);
                return task;
            }
            if (!c() || this.f12341l >= this.f12339j) {
                return null;
            }
            androidx.media3.exoplayer.offline.c cVarN = n(cVar, 2, 0);
            Task task2 = new Task(cVarN.f12413a, this.f12333d.a(cVarN.f12413a), cVarN.f12420h, false, this.f12340k, this);
            this.f12336g.put(cVarN.f12413a.f12343id, task2);
            int i11 = this.f12341l;
            this.f12341l = i11 + 1;
            if (i11 == 0) {
                sendEmptyMessageDelayed(12, 5000L);
            }
            task2.start();
            return task2;
        }

        private void z(Task task, androidx.media3.exoplayer.offline.c cVar) {
            if (task != null) {
                if (task.isRemove) {
                    return;
                }
                task.cancel(false);
            } else {
                if (this.f12342m) {
                    return;
                }
                Task task2 = new Task(cVar.f12413a, this.f12333d.a(cVar.f12413a), cVar.f12420h, true, this.f12340k, this);
                this.f12336g.put(cVar.f12413a.f12343id, task2);
                this.f12342m = true;
                task2.start();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i11 = 0;
            switch (message.what) {
                case 1:
                    h(message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 2:
                    r(message.arg1 != 0);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 3:
                    u(message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 4:
                    w((String) message.obj, message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 5:
                    s(message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 6:
                    t(message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 7:
                    b((DownloadRequest) message.obj, message.arg1);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 8:
                    q((String) message.obj);
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 9:
                    p();
                    i11 = 1;
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 10:
                    l((Task) message.obj);
                    this.f12334e.obtainMessage(2, i11, this.f12336g.size()).sendToTarget();
                    return;
                case 11:
                    i((Task) message.obj, a1.v1(message.arg1, message.arg2));
                    return;
                case 12:
                    C();
                    return;
                case 13:
                    o();
                    return;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    public interface d {
        void a(DownloadManager downloadManager, boolean z10);

        void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar);

        void c(DownloadManager downloadManager, boolean z10);

        void d(DownloadManager downloadManager);

        void e(DownloadManager downloadManager, Requirements requirements, int i11);

        void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar, Exception exc);

        void g(DownloadManager downloadManager);
    }

    public DownloadManager(Context context, t tVar, p pVar) {
        this.f12310a = context.getApplicationContext();
        this.f12311b = tVar;
        Handler handlerD = a1.D(new Handler.Callback() { // from class: androidx.media3.exoplayer.offline.g
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f12421a.j(message);
            }
        });
        this.f12312c = handlerD;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        c cVar = new c(handlerThread, tVar, pVar, handlerD, this.f12320k, this.f12321l, this.f12319j);
        this.f12313d = cVar;
        f2.c.InterfaceC0754c interfaceC0754c = new f2.c.InterfaceC0754c() { // from class: androidx.media3.exoplayer.offline.h
            @Override // f2.c.InterfaceC0754c
            public final void a(f2.c cVar2, int i11) {
                this.f12422a.s(cVar2, i11);
            }
        };
        this.f12314e = interfaceC0754c;
        f2.c cVar2 = new f2.c(context, interfaceC0754c, f12309q);
        this.f12325p = cVar2;
        int i11 = cVar2.i();
        this.f12322m = i11;
        this.f12316g = 1;
        cVar.obtainMessage(1, i11, 0).sendToTarget();
    }

    private boolean B() {
        boolean z10;
        if (!this.f12319j && this.f12322m != 0) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.f12324o.size()) {
                    z10 = false;
                    break;
                }
                if (((androidx.media3.exoplayer.offline.c) this.f12324o.get(i11)).f12414b == 0) {
                    z10 = true;
                    break;
                }
                i11++;
            }
        } else {
            z10 = false;
            break;
        }
        boolean z11 = this.f12323n != z10;
        this.f12323n = z10;
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(Message message) {
        int i11 = message.what;
        if (i11 == 1) {
            q((List) message.obj);
        } else if (i11 == 2) {
            r(message.arg1, message.arg2);
        } else {
            if (i11 != 3) {
                throw new IllegalStateException();
            }
            p((b) message.obj);
        }
        return true;
    }

    static androidx.media3.exoplayer.offline.c n(androidx.media3.exoplayer.offline.c cVar, DownloadRequest downloadRequest, int i11, long j11) {
        int i12;
        int i13 = cVar.f12414b;
        long j12 = (i13 == 5 || cVar.c()) ? j11 : cVar.f12415c;
        if (i13 == 5 || i13 == 7) {
            i12 = 7;
        } else {
            i12 = i11 != 0 ? 1 : 0;
        }
        return new androidx.media3.exoplayer.offline.c(cVar.f12413a.copyWithMergedRequest(downloadRequest), i12, j12, j11, -1L, i11, 0);
    }

    private void o() {
        Iterator it = this.f12315f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(this, this.f12323n);
        }
    }

    private void p(b bVar) {
        this.f12324o = Collections.unmodifiableList(bVar.f12328c);
        androidx.media3.exoplayer.offline.c cVar = bVar.f12326a;
        boolean zB = B();
        if (bVar.f12327b) {
            Iterator it = this.f12315f.iterator();
            while (it.hasNext()) {
                ((d) it.next()).b(this, cVar);
            }
        } else {
            Iterator it2 = this.f12315f.iterator();
            while (it2.hasNext()) {
                ((d) it2.next()).f(this, cVar, bVar.f12329d);
            }
        }
        if (zB) {
            o();
        }
    }

    private void q(List list) {
        this.f12318i = true;
        this.f12324o = Collections.unmodifiableList(list);
        boolean zB = B();
        Iterator it = this.f12315f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).g(this);
        }
        if (zB) {
            o();
        }
    }

    private void r(int i11, int i12) {
        this.f12316g -= i11;
        this.f12317h = i12;
        if (k()) {
            Iterator it = this.f12315f.iterator();
            while (it.hasNext()) {
                ((d) it.next()).d(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(f2.c cVar, int i11) {
        Requirements requirementsF = cVar.f();
        if (this.f12322m != i11) {
            this.f12322m = i11;
            this.f12316g++;
            this.f12313d.obtainMessage(3, i11, 0).sendToTarget();
        }
        boolean zB = B();
        Iterator it = this.f12315f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).e(this, requirementsF, i11);
        }
        if (zB) {
            o();
        }
    }

    private void y(boolean z10) {
        if (this.f12319j == z10) {
            return;
        }
        this.f12319j = z10;
        this.f12316g++;
        this.f12313d.obtainMessage(2, z10 ? 1 : 0, 0).sendToTarget();
        boolean zB = B();
        Iterator it = this.f12315f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).c(this, z10);
        }
        if (zB) {
            o();
        }
    }

    public void A(String str, int i11) {
        this.f12316g++;
        this.f12313d.obtainMessage(4, i11, 0, str).sendToTarget();
    }

    public void c(DownloadRequest downloadRequest, int i11) {
        this.f12316g++;
        this.f12313d.obtainMessage(7, i11, 0, downloadRequest).sendToTarget();
    }

    public void d(d dVar) {
        androidx.media3.common.util.a.e(dVar);
        this.f12315f.add(dVar);
    }

    public List e() {
        return this.f12324o;
    }

    public f f() {
        return this.f12311b;
    }

    public boolean g() {
        return this.f12319j;
    }

    public int h() {
        return this.f12322m;
    }

    public Requirements i() {
        return this.f12325p.f();
    }

    public boolean k() {
        return this.f12317h == 0 && this.f12316g == 0;
    }

    public boolean l() {
        return this.f12318i;
    }

    public boolean m() {
        return this.f12323n;
    }

    public void t() {
        y(true);
    }

    public void u() {
        this.f12316g++;
        this.f12313d.obtainMessage(9).sendToTarget();
    }

    public void v(String str) {
        this.f12316g++;
        this.f12313d.obtainMessage(8, str).sendToTarget();
    }

    public void w(d dVar) {
        this.f12315f.remove(dVar);
    }

    public void x() {
        y(false);
    }

    public void z(Requirements requirements) {
        if (requirements.equals(this.f12325p.f())) {
            return;
        }
        this.f12325p.j();
        f2.c cVar = new f2.c(this.f12310a, this.f12314e, requirements);
        this.f12325p = cVar;
        s(this.f12325p, cVar.i());
    }
}
