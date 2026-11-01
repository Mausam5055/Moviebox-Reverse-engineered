package com.bytedance.adsdk.sP;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class sef<K, V> {
    private int Dq;
    private int EjP;
    private int HiB;
    private int Jcg;
    private final LinkedHashMap<K, V> Sj;
    private int TKC;
    private int sP;
    private int vS;

    public sef(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.TKC = i11;
        this.Sj = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int TKC(K k11, V v11) {
        int iSP = sP(k11, v11);
        if (iSP >= 0) {
            return iSP;
        }
        throw new IllegalStateException("Negative size: " + k11 + UrlUtils.EQUAL_MARK + v11);
    }

    public final V Sj(K k11) {
        V vPut;
        if (k11 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                V v11 = this.Sj.get(k11);
                if (v11 != null) {
                    this.Jcg++;
                    return v11;
                }
                this.Dq++;
                V vSP = sP(k11);
                if (vSP == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.HiB++;
                        vPut = this.Sj.put(k11, vSP);
                        if (vPut != null) {
                            this.Sj.put(k11, vPut);
                        } else {
                            this.sP += TKC(k11, vSP);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (vPut != null) {
                    return vPut;
                }
                Sj(this.TKC);
                return vSP;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final V Sj(K k11, V v11) {
        V vPut;
        if (k11 == null || v11 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.EjP++;
                this.sP += TKC(k11, v11);
                vPut = this.Sj.put(k11, v11);
                if (vPut != null) {
                    this.sP -= TKC(k11, vPut);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Sj(this.TKC);
        return vPut;
    }

    public void Sj(int i11) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.sP < 0 || (this.Sj.isEmpty() && this.sP != 0)) {
                        break;
                    }
                    if (this.sP > i11 && !this.Sj.isEmpty()) {
                        Map.Entry<K, V> next = this.Sj.entrySet().iterator().next();
                        K key = next.getKey();
                        V value = next.getValue();
                        this.Sj.remove(key);
                        this.sP -= TKC(key, value);
                        this.vS++;
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    protected int sP(K k11, V v11) {
        return 1;
    }

    protected V sP(K k11) {
        return null;
    }

    public final synchronized String toString() {
        int i11;
        int i12;
        try {
            i11 = this.Jcg;
            i12 = this.Dq + i11;
        } catch (Throwable th2) {
            throw th2;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.TKC), Integer.valueOf(this.Jcg), Integer.valueOf(this.Dq), Integer.valueOf(i12 != 0 ? (i11 * 100) / i12 : 0));
    }
}
