package com.google.android.libraries.places.internal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
abstract class zznp implements Comparable, Serializable {
    final Comparable zza;

    zznp(Comparable comparable) {
        this.zza = comparable;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zznp) {
            try {
                if (compareTo((zznp) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract int hashCode();

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public int compareTo(zznp zznpVar) {
        if (zznpVar != zznn.zzb) {
            if (zznpVar == zznl.zzb) {
                return -1;
            }
            Comparable comparable = this.zza;
            Comparable comparable2 = zznpVar.zza;
            int i11 = zzok.zzc;
            int iCompareTo = comparable.compareTo(comparable2);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            boolean z10 = this instanceof zznm;
            if (z10 == (zznpVar instanceof zznm)) {
                return 0;
            }
            if (!z10) {
                return -1;
            }
        }
        return 1;
    }

    abstract void zzc(StringBuilder sb2);

    abstract void zzd(StringBuilder sb2);

    abstract boolean zze(Comparable comparable);
}
