package pe;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue f72442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f72443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f72444c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f72445d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f72442a = linkedBlockingQueue;
        this.f72443b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f72444c.poll();
        this.f72445d = bVar;
        if (bVar != null) {
            bVar.b(this.f72443b);
        }
    }

    @Override // pe.b.a
    public void a(b bVar) {
        this.f72445d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f72444c.add(bVar);
        if (this.f72445d == null) {
            b();
        }
    }
}
