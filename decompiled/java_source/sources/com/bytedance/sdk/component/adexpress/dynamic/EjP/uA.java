package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class uA {
    public float Sj;
    public float sP;

    public uA(float f11, float f12) {
        this.Sj = f11;
        this.sP = f12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            uA uAVar = (uA) obj;
            if (Float.compare(uAVar.Sj, this.Sj) == 0 && Float.compare(uAVar.sP, this.sP) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.Sj), Float.valueOf(this.sP)});
    }
}
