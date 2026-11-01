package com.bytedance.adsdk.sP.TKC;

import android.util.Pair;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg<T> {
    T Sj;
    T sP;

    private static boolean sP(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public void Sj(T t11, T t12) {
        this.Sj = t11;
        this.sP = t12;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return sP(pair.first, this.Sj) && sP(pair.second, this.sP);
    }

    public int hashCode() {
        T t11 = this.Sj;
        int iHashCode = t11 == null ? 0 : t11.hashCode();
        T t12 = this.sP;
        return iHashCode ^ (t12 != null ? t12.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.Sj + " " + this.sP + "}";
    }
}
