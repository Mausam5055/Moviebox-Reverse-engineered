package com.bytedance.sdk.component.HiB.TKC.Sj;

import android.util.Log;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TKC<K, V> {
    private int Dq;
    private int EjP;
    private int HiB;
    private int Jcg;
    private final LinkedHashMap<K, SoftReference<V>> Sj;
    private int TKC;
    private int sP;
    private int vS;

    public TKC(int i11) {
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
        V v11;
        if (k11 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                SoftReference<V> softReference = this.Sj.get(k11);
                if (softReference != null) {
                    v11 = softReference.get();
                    if (v11 != null) {
                        this.Jcg++;
                        return v11;
                    }
                    this.Sj.remove(k11);
                } else {
                    v11 = null;
                }
                this.Dq++;
                V vSP = sP(k11);
                if (vSP == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.HiB++;
                        SoftReference<V> softReferencePut = this.Sj.put(k11, new SoftReference<>(vSP));
                        if (softReferencePut != null) {
                            v11 = softReferencePut.get();
                        }
                        if (v11 != null) {
                            this.Sj.put(k11, softReferencePut);
                        } else {
                            this.sP += TKC(k11, vSP);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (v11 != null) {
                    return v11;
                }
                Sj(this.TKC);
                return vSP;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final V Sj(K k11, V v11) {
        V v12;
        if (k11 == null || v11 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.EjP++;
                this.sP += TKC(k11, v11);
                SoftReference<V> softReferencePut = this.Sj.put(k11, new SoftReference<>(v11));
                if (softReferencePut != null) {
                    v12 = softReferencePut.get();
                    if (v12 != null) {
                        this.sP -= TKC(k11, v12);
                    }
                } else {
                    v12 = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Sj(this.TKC);
        return v12;
    }

    public void Sj(int i11) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.sP < 0 || (this.Sj.isEmpty() && this.sP != 0)) {
                        break;
                        break;
                    }
                    if (this.sP <= i11) {
                        return;
                    }
                    Map.Entry<K, SoftReference<V>> next = this.Sj.entrySet().iterator().next();
                    if (next == null) {
                        return;
                    }
                    K key = next.getKey();
                    SoftReference<V> value = next.getValue();
                    this.Sj.remove(key);
                    if (value != null) {
                        this.sP -= TKC(key, value.get());
                    }
                    this.vS++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        Log.e("LruCache", "oom maybe occured, clear cache. size= " + this.sP + ", maxSize: " + i11);
        this.sP = 0;
        this.Sj.clear();
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
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.TKC), Integer.valueOf(this.Jcg), Integer.valueOf(this.Dq), Integer.valueOf(i12 != 0 ? (i11 * 100) / i12 : 0));
    }
}
