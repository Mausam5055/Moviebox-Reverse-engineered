package com.bytedance.sdk.component.HiB.EjP.TKC.Sj;

import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TKC<K, V> {
    private final LinkedHashMap<K, SoftReference<V>> Sj = new LinkedHashMap<>(0, 0.75f, true);
    private int sP;

    public TKC(int i11) {
        this.sP = i11;
    }

    public synchronized V Sj(K k11) {
        V v11 = null;
        if (k11 == null) {
            return null;
        }
        if (this.sP <= 0) {
            return null;
        }
        SoftReference<V> softReference = this.Sj.get(k11);
        if (softReference != null) {
            v11 = softReference.get();
            if (v11 != null) {
                return v11;
            }
            this.Sj.remove(k11);
        }
        return v11;
    }

    public synchronized void Sj(int i11) {
        int size = this.Sj.size() - i11;
        if (size > 0) {
            Iterator<Map.Entry<K, SoftReference<V>>> it = this.Sj.entrySet().iterator();
            for (int i12 = 0; i12 < size; i12++) {
                it.next();
                it.remove();
            }
        }
        if (i11 == 0) {
            return;
        }
        Iterator<Map.Entry<K, SoftReference<V>>> it2 = this.Sj.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().get() == null) {
                it2.remove();
            }
        }
    }

    public synchronized void Sj(K k11, V v11) {
        if (this.sP <= 0) {
            return;
        }
        if (k11 == null || v11 == null) {
            return;
        }
        this.Sj.put(k11, new SoftReference<>(v11));
        int size = this.Sj.size();
        int i11 = this.sP;
        if (size > i11) {
            Sj((int) (((double) i11) * 0.7d));
        }
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxCount=%d,size=%d]", Integer.valueOf(this.sP), Integer.valueOf(this.Sj.size()));
    }
}
