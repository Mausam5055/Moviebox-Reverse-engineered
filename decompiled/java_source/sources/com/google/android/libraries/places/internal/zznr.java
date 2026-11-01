package com.google.android.libraries.places.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
class zznr extends zzns {
    Object[] zza = new Object[4];
    int zzb = 0;
    boolean zzc;

    zznr(int i11) {
    }

    private final void zze(int i11) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i11) {
            this.zza = Arrays.copyOf(objArr, zzns.zzd(length, i11));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
    }

    public final zznr zza(Object obj) {
        obj.getClass();
        zze(this.zzb + 1);
        Object[] objArr = this.zza;
        int i11 = this.zzb;
        this.zzb = i11 + 1;
        objArr[i11] = obj;
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzns
    public /* bridge */ /* synthetic */ zzns zzb(Object obj) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzns zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            zze(this.zzb + iterable.size());
            if (iterable instanceof zznt) {
                this.zzb = ((zznt) iterable).zza(this.zza, this.zzb);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzb(it.next());
        }
        return this;
    }
}
