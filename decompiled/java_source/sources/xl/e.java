package xl;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f78323a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f78324b = new c(null);

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lock f78325a = new ReentrantLock();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f78326b;

        /* synthetic */ b(a aVar) {
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue f78327a = new ArrayDeque();

        /* synthetic */ c(a aVar) {
        }

        b a() {
            b bVar;
            synchronized (this.f78327a) {
                bVar = (b) this.f78327a.poll();
            }
            return bVar == null ? new b(null) : bVar;
        }

        void b(b bVar) {
            synchronized (this.f78327a) {
                try {
                    if (this.f78327a.size() < 10) {
                        this.f78327a.offer(bVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a(wl.e eVar) {
        b bVarA;
        synchronized (this) {
            try {
                bVarA = (b) this.f78323a.get(eVar);
                if (bVarA == null) {
                    bVarA = this.f78324b.a();
                    this.f78323a.put(eVar, bVarA);
                }
                bVarA.f78326b++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVarA.f78325a.lock();
    }

    public void b(wl.e eVar) {
        b bVar;
        synchronized (this) {
            try {
                bVar = (b) this.f78323a.get(eVar);
                int i11 = bVar.f78326b;
                if (i11 < 1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cannot release a lock that is not held, key: ");
                    sb2.append(eVar);
                    sb2.append(", interestedThreads: ");
                    sb2.append(bVar.f78326b);
                    throw new IllegalStateException(sb2.toString());
                }
                int i12 = i11 - 1;
                bVar.f78326b = i12;
                if (i12 == 0) {
                    b bVar2 = (b) this.f78323a.remove(eVar);
                    if (!bVar2.equals(bVar)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Removed the wrong lock, expected to remove: ");
                        sb3.append(bVar);
                        sb3.append(", but actually removed: ");
                        sb3.append(bVar2);
                        sb3.append(", key: ");
                        sb3.append(eVar);
                        throw new IllegalStateException(sb3.toString());
                    }
                    this.f78324b.b(bVar2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVar.f78325a.unlock();
    }
}
