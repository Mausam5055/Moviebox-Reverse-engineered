package androidx.collection;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class z {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final n.b lock;
    private final n.c map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public z(int i11) {
        this.maxSize = i11;
        if (!(i11 > 0)) {
            n.d.a("maxSize <= 0");
        }
        this.map = new n.c(0, 0.75f);
        this.lock = new n.b();
    }

    private final int a(Object obj, Object obj2) {
        int iSizeOf = sizeOf(obj, obj2);
        if (!(iSizeOf >= 0)) {
            n.d.b("Negative size: " + obj + '=' + obj2);
        }
        return iSizeOf;
    }

    protected Object create(Object key) {
        Intrinsics.h(key, "key");
        return null;
    }

    public final int createCount() {
        int i11;
        synchronized (this.lock) {
            i11 = this.createCount;
        }
        return i11;
    }

    protected void entryRemoved(boolean z10, Object key, Object oldValue, Object obj) {
        Intrinsics.h(key, "key");
        Intrinsics.h(oldValue, "oldValue");
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i11;
        synchronized (this.lock) {
            i11 = this.evictionCount;
        }
        return i11;
    }

    public final Object get(Object key) {
        Object objD;
        Intrinsics.h(key, "key");
        synchronized (this.lock) {
            Object objA = this.map.a(key);
            if (objA != null) {
                this.hitCount++;
                return objA;
            }
            this.missCount++;
            Object objCreate = create(key);
            if (objCreate == null) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    this.createCount++;
                    objD = this.map.d(key, objCreate);
                    if (objD != null) {
                        this.map.d(key, objD);
                    } else {
                        this.size += a(key, objCreate);
                        Unit unit = Unit.f67061a;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (objD != null) {
                entryRemoved(false, key, objCreate, objD);
                return objD;
            }
            trimToSize(this.maxSize);
            return objCreate;
        }
    }

    public final int hitCount() {
        int i11;
        synchronized (this.lock) {
            i11 = this.hitCount;
        }
        return i11;
    }

    public final int maxSize() {
        int i11;
        synchronized (this.lock) {
            i11 = this.maxSize;
        }
        return i11;
    }

    public final int missCount() {
        int i11;
        synchronized (this.lock) {
            i11 = this.missCount;
        }
        return i11;
    }

    public final Object put(Object key, Object value) {
        Object objD;
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        synchronized (this.lock) {
            try {
                this.putCount++;
                this.size += a(key, value);
                objD = this.map.d(key, value);
                if (objD != null) {
                    this.size -= a(key, objD);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objD != null) {
            entryRemoved(false, key, objD, value);
        }
        trimToSize(this.maxSize);
        return objD;
    }

    public final int putCount() {
        int i11;
        synchronized (this.lock) {
            i11 = this.putCount;
        }
        return i11;
    }

    public final Object remove(Object key) {
        Object objE;
        Intrinsics.h(key, "key");
        synchronized (this.lock) {
            try {
                objE = this.map.e(key);
                if (objE != null) {
                    this.size -= a(key, objE);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objE != null) {
            entryRemoved(false, key, objE, null);
        }
        return objE;
    }

    public void resize(int i11) {
        if (!(i11 > 0)) {
            n.d.a("maxSize <= 0");
        }
        synchronized (this.lock) {
            this.maxSize = i11;
            Unit unit = Unit.f67061a;
        }
        trimToSize(i11);
    }

    public final int size() {
        int i11;
        synchronized (this.lock) {
            i11 = this.size;
        }
        return i11;
    }

    protected int sizeOf(Object key, Object value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return 1;
    }

    public final Map<Object, Object> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this.lock) {
            linkedHashMap = new LinkedHashMap(this.map.b().size());
            for (Map.Entry entry : this.map.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            try {
                int i11 = this.hitCount;
                int i12 = this.missCount + i11;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i12 != 0 ? (i11 * 100) / i12 : 0) + "%]";
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public void trimToSize(int i11) {
        Object key;
        Object value;
        while (true) {
            synchronized (this.lock) {
                try {
                    if (!(this.size >= 0 && (!this.map.c() || this.size == 0))) {
                        n.d.b("LruCache.sizeOf() is reporting inconsistent results!");
                    }
                    if (this.size <= i11 || this.map.c()) {
                        break;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) CollectionsKt.j0(this.map.b());
                    if (entry == null) {
                        return;
                    }
                    key = entry.getKey();
                    value = entry.getValue();
                    this.map.e(key);
                    this.size -= a(key, value);
                    this.evictionCount++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            entryRemoved(true, key, value, null);
        }
    }
}
