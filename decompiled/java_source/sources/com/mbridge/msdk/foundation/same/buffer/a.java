package com.mbridge.msdk.foundation.same.buffer;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<String, JSONObject> f35357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f35358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f35359c;

    public a(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f35358b = i11;
        this.f35357a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private void a(int i11) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f35359c < 0 || (this.f35357a.isEmpty() && this.f35359c != 0)) {
                        break;
                    }
                    if (this.f35359c > i11 && !this.f35357a.isEmpty()) {
                        Map.Entry<String, JSONObject> next = this.f35357a.entrySet().iterator().next();
                        if (next == null) {
                            return;
                        }
                        String key = next.getKey();
                        try {
                            int iB = b(key, next.getValue());
                            this.f35357a.remove(key);
                            this.f35359c -= iB;
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

    private int b(String str, JSONObject jSONObject) {
        return 1;
    }

    public Collection<String> a() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f35357a.keySet());
        }
        return hashSet;
    }

    public final JSONObject a(String str) {
        JSONObject jSONObject;
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            jSONObject = this.f35357a.get(str);
        }
        return jSONObject;
    }

    public final boolean a(String str, JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f35359c += b(str, jSONObject);
                JSONObject jSONObjectPut = this.f35357a.put(str, jSONObject);
                if (jSONObjectPut != null) {
                    this.f35359c -= b(str, jSONObjectPut);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        a(this.f35358b);
        return true;
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.f35358b));
    }
}
