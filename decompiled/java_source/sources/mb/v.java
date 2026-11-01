package mb;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
class v implements ic.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Set f69501b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Set f69500a = Collections.newSetFromMap(new ConcurrentHashMap());

    v(Collection collection) {
        this.f69500a.addAll(collection);
    }

    static v b(Collection collection) {
        return new v((Set) collection);
    }

    private synchronized void d() {
        try {
            Iterator it = this.f69500a.iterator();
            while (it.hasNext()) {
                this.f69501b.add(((ic.b) it.next()).get());
            }
            this.f69500a = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized void a(ic.b bVar) {
        try {
            if (this.f69501b == null) {
                this.f69500a.add(bVar);
            } else {
                this.f69501b.add(bVar.get());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // ic.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set get() {
        if (this.f69501b == null) {
            synchronized (this) {
                try {
                    if (this.f69501b == null) {
                        this.f69501b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Collections.unmodifiableSet(this.f69501b);
    }
}
