package mb;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
class t implements fc.d, fc.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f69494a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue f69495b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f69496c;

    t(Executor executor) {
        this.f69496c = executor;
    }

    private synchronized Set e(fc.a aVar) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(Map.Entry entry, fc.a aVar) {
        ((fc.b) entry.getKey()).a(aVar);
    }

    @Override // fc.d
    public synchronized void a(Class cls, Executor executor, fc.b bVar) {
        try {
            a0.b(cls);
            a0.b(bVar);
            a0.b(executor);
            if (!this.f69494a.containsKey(cls)) {
                this.f69494a.put(cls, new ConcurrentHashMap());
            }
            ((ConcurrentHashMap) this.f69494a.get(cls)).put(bVar, executor);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // fc.d
    public void b(Class cls, fc.b bVar) {
        a(cls, this.f69496c, bVar);
    }

    void d() {
        Queue queue;
        synchronized (this) {
            try {
                queue = this.f69495b;
                if (queue != null) {
                    this.f69495b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (queue != null) {
            Iterator it = queue.iterator();
            while (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                g(null);
            }
        }
    }

    public void g(final fc.a aVar) {
        a0.b(aVar);
        synchronized (this) {
            try {
                Queue queue = this.f69495b;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (final Map.Entry entry : e(aVar)) {
                    ((Executor) entry.getValue()).execute(new Runnable(entry, aVar) { // from class: mb.s

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        public final /* synthetic */ Map.Entry f69493a;

                        @Override // java.lang.Runnable
                        public final void run() {
                            t.f(this.f69493a, null);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
