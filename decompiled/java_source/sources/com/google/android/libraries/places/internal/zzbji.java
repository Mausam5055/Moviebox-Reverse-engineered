package com.google.android.libraries.places.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbji {
    private final Set zza = Collections.newSetFromMap(new IdentityHashMap());

    protected abstract void zza();

    protected abstract void zzb();

    public final void zzc(Object obj, boolean z10) {
        int size = this.zza.size();
        if (z10) {
            this.zza.add(obj);
            if (size == 0) {
                zza();
                return;
            }
            return;
        }
        if (this.zza.remove(obj) && size == 1) {
            zzb();
        }
    }

    public final boolean zzd(Object... objArr) {
        for (int i11 = 0; i11 < 2; i11++) {
            if (this.zza.contains(objArr[i11])) {
                return true;
            }
        }
        return false;
    }

    public final boolean zze() {
        return !this.zza.isEmpty();
    }
}
