package com.mbridge.msdk.click.retry;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<String, b> f34441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34443c;

    public c(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f34442b = i11;
        this.f34441a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private void a(int i11) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f34443c < 0 || (this.f34441a.isEmpty() && this.f34443c != 0)) {
                        break;
                    }
                    if (this.f34443c > i11 && !this.f34441a.isEmpty()) {
                        Map.Entry<String, b> next = this.f34441a.entrySet().iterator().next();
                        if (next == null) {
                            return;
                        }
                        String key = next.getKey();
                        try {
                            int iB = b(key, next.getValue());
                            this.f34441a.remove(key);
                            this.f34443c -= iB;
                        } catch (Throwable unused) {
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    private int b(String str, b bVar) {
        return 1;
    }

    public final b a(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                b bVar = this.f34441a.get(str);
                if (bVar != null) {
                    return bVar;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Collection<String> a() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f34441a.keySet());
        }
        return hashSet;
    }

    public final boolean a(String str, b bVar) {
        if (str == null || bVar == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f34443c += b(str, bVar);
                b bVarPut = this.f34441a.put(str, bVar);
                if (bVarPut != null) {
                    this.f34443c -= b(str, bVarPut);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        a(this.f34442b);
        return true;
    }

    public final void b(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                b bVarRemove = this.f34441a.remove(str);
                if (bVarRemove != null) {
                    this.f34443c -= b(str, bVarRemove);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.f34442b));
    }
}
