package je;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue f66004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f66005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f66006c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f66007d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f66004a = linkedBlockingQueue;
        this.f66005b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f66006c.poll();
        this.f66007d = bVar;
        if (bVar != null) {
            bVar.b(this.f66005b);
        }
    }

    @Override // je.b.a
    public void a(b bVar) {
        this.f66007d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f66006c.add(bVar);
        if (this.f66007d == null) {
            b();
        }
    }
}
