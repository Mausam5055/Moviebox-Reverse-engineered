package y00;

import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes7.dex */
class b implements Iterator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final WeakHashMap f78555c = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f78556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Iterator f78557b;

    b(Object obj, Iterator it) {
        if (obj == null) {
            throw new IllegalArgumentException("parent object is null");
        }
        if (it == null) {
            throw new IllegalArgumentException("cannot wrap null iterator");
        }
        this.f78556a = obj;
        if (it.hasNext()) {
            this.f78557b = it;
            a(this);
        }
    }

    private static synchronized void a(b bVar) {
        try {
            WeakHashMap weakHashMap = f78555c;
            Set hashSet = (Set) weakHashMap.get(bVar.f78556a);
            if (hashSet == null) {
                hashSet = new HashSet();
                weakHashMap.put(bVar.f78556a, hashSet);
            }
            hashSet.add(bVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static synchronized void b(b bVar) {
        if (!((Set) f78555c.get(bVar.f78556a)).contains(bVar)) {
            throw new ConcurrentModificationException();
        }
    }

    static synchronized void c(Object obj) {
        Set set = (Set) f78555c.get(obj);
        if (set != null) {
            set.clear();
        }
    }

    private static synchronized void d(b bVar) {
        Set set = (Set) f78555c.get(bVar.f78556a);
        if (set != null) {
            set.remove(bVar);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f78557b == null) {
            return false;
        }
        b(this);
        return this.f78557b.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Iterator it = this.f78557b;
        if (it == null || !it.hasNext()) {
            throw new NoSuchElementException();
        }
        b(this);
        try {
            return this.f78557b.next();
        } finally {
            if (!this.f78557b.hasNext()) {
                this.f78557b = null;
                d(this);
            }
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
