package ve;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue f77275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f77276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f77277c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f77278d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f77275a = linkedBlockingQueue;
        this.f77276b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f77277c.poll();
        this.f77278d = bVar;
        if (bVar != null) {
            bVar.b(this.f77276b);
        }
    }

    @Override // ve.b.a
    public void a(b bVar) {
        this.f77278d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f77277c.add(bVar);
        if (this.f77278d == null) {
            b();
        }
    }
}
