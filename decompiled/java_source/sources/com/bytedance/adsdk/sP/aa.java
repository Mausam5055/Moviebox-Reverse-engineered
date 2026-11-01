package com.bytedance.adsdk.sP;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class aa<V> {
    private final V Sj;
    private final Throwable sP;

    public aa(V v11) {
        this.Sj = v11;
        this.sP = null;
    }

    public aa(Throwable th2) {
        this.sP = th2;
        this.Sj = null;
    }

    public V Sj() {
        return this.Sj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aa)) {
            return false;
        }
        aa aaVar = (aa) obj;
        if (Sj() != null && Sj().equals(aaVar.Sj())) {
            return true;
        }
        if (sP() == null || aaVar.sP() == null) {
            return false;
        }
        return sP().toString().equals(sP().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Sj(), sP()});
    }

    public Throwable sP() {
        return this.sP;
    }
}
