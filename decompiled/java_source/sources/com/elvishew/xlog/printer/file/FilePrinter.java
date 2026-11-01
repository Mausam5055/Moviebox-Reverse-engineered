package com.elvishew.xlog.printer.file;

import java.io.File;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class FilePrinter implements e8.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h8.b f24068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f8.a f24069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g8.a f24070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r7.c f24071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i8.b f24072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile Worker f24073g = new Worker();

    private class Worker implements Runnable {
        private BlockingQueue<c> logs;
        private volatile boolean started;

        private Worker() {
            this.logs = new LinkedBlockingQueue();
        }

        void enqueue(c cVar) {
            try {
                this.logs.put(cVar);
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
        }

        boolean isStarted() {
            boolean z10;
            synchronized (this) {
                z10 = this.started;
            }
            return z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    c cVarTake = this.logs.take();
                    if (cVarTake == null) {
                        return;
                    } else {
                        FilePrinter.this.e(cVarTake.f24080a, cVarTake.f24081b, cVarTake.f24082c, cVarTake.f24083d);
                    }
                } catch (InterruptedException e11) {
                    e11.printStackTrace();
                    synchronized (this) {
                        this.started = false;
                        return;
                    }
                }
            }
        }

        void start() {
            synchronized (this) {
                try {
                    if (this.started) {
                        return;
                    }
                    new Thread(this).start();
                    this.started = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f24074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h8.b f24075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f8.a f24076c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        g8.a f24077d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        r7.c f24078e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        i8.b f24079f;

        public b(String str) {
            this.f24074a = str;
        }

        private void e() {
            if (this.f24075b == null) {
                this.f24075b = b8.a.e();
            }
            if (this.f24076c == null) {
                this.f24076c = b8.a.b();
            }
            if (this.f24077d == null) {
                this.f24077d = b8.a.d();
            }
            if (this.f24078e == null) {
                this.f24078e = b8.a.g();
            }
            if (this.f24079f == null) {
                this.f24079f = b8.a.m();
            }
        }

        public b a(f8.b bVar) {
            if (!(bVar instanceof f8.a)) {
                bVar = new c8.a(bVar);
            }
            f8.a aVar = (f8.a) bVar;
            this.f24076c = aVar;
            c8.b.b(aVar);
            return this;
        }

        public FilePrinter b() {
            e();
            return new FilePrinter(this);
        }

        public b c(g8.a aVar) {
            this.f24077d = aVar;
            return this;
        }

        public b d(h8.b bVar) {
            this.f24075b = bVar;
            return this;
        }

        public b f(r7.c cVar) {
            this.f24078e = cVar;
            return this;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f24080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f24081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f24082c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f24083d;

        c(long j11, int i11, String str, String str2) {
            this.f24080a = j11;
            this.f24081b = i11;
            this.f24082c = str;
            this.f24083d = str2;
        }
    }

    FilePrinter(b bVar) {
        this.f24067a = bVar.f24074a;
        this.f24068b = bVar.f24075b;
        this.f24069c = bVar.f24076c;
        this.f24070d = bVar.f24077d;
        this.f24071e = bVar.f24078e;
        this.f24072f = bVar.f24079f;
        c();
    }

    private void c() {
        File file = new File(this.f24067a);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void d() {
        File[] fileArrListFiles = new File(this.f24067a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.f24070d.a(file)) {
                file.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(long j11, int i11, String str, String str2) {
        String strD = this.f24072f.d();
        boolean zE = this.f24072f.e();
        if (strD == null || !zE || this.f24068b.b()) {
            String strA = this.f24068b.a(i11, System.currentTimeMillis());
            if (strA == null || strA.trim().length() == 0) {
                b8.b.e().c("File name should not be empty, ignore log: " + str2);
                return;
            }
            if (!strA.equals(strD) || !zE) {
                this.f24072f.b();
                d();
                if (!this.f24072f.f(new File(this.f24067a, strA))) {
                    return;
                } else {
                    strD = strA;
                }
            }
        }
        File fileC = this.f24072f.c();
        if (this.f24069c.b(fileC)) {
            this.f24072f.b();
            c8.b.a(fileC, this.f24069c);
            if (!this.f24072f.f(new File(this.f24067a, strD))) {
                return;
            }
        }
        this.f24072f.a(this.f24071e.a(j11, i11, str, str2).toString());
    }

    @Override // e8.c
    public void a(int i11, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!this.f24073g.isStarted()) {
            this.f24073g.start();
        }
        this.f24073g.enqueue(new c(jCurrentTimeMillis, i11, str, str2));
    }
}
