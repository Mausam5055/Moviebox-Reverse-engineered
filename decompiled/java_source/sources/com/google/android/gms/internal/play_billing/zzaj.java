package com.google.android.gms.internal.play_billing;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaj extends zzac implements Set {
    private transient zzaf zza;

    zzaj() {
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzar.zza(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    public zzaf zzd() {
        zzaf zzafVar = this.zza;
        if (zzafVar != null) {
            return zzafVar;
        }
        zzaf zzafVarZzh = zzh();
        this.zza = zzafVarZzh;
        return zzafVarZzh;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zze */
    public abstract zzas iterator();

    zzaf zzh() {
        Object[] array = toArray();
        int i11 = zzaf.zzd;
        return zzaf.zzi(array, array.length);
    }
}
