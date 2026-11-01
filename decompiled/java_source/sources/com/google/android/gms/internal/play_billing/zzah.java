package com.google.android.gms.internal.play_billing;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzah {
    Object[] zza = new Object[8];
    int zzb = 0;
    zzag zzc;

    public final zzah zza(Object obj, Object obj2) {
        int i11 = this.zzb + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i12 = i11 + i11;
        if (i12 > length) {
            int i13 = length + (length >> 1) + 1;
            if (i13 < i12) {
                int iHighestOneBit = Integer.highestOneBit(i12 - 1);
                i13 = iHighestOneBit + iHighestOneBit;
            }
            if (i13 < 0) {
                i13 = Integer.MAX_VALUE;
            }
            this.zza = Arrays.copyOf(objArr, i13);
        }
        zzaa.zza(obj, obj2);
        Object[] objArr2 = this.zza;
        int i14 = this.zzb;
        int i15 = i14 + i14;
        objArr2[i15] = obj;
        objArr2[i15 + 1] = obj2;
        this.zzb = i14 + 1;
        return this;
    }

    public final zzai zzb() {
        zzag zzagVar = this.zzc;
        if (zzagVar != null) {
            throw zzagVar.zza();
        }
        zzaq zzaqVarZzf = zzaq.zzf(this.zzb, this.zza, this);
        zzag zzagVar2 = this.zzc;
        if (zzagVar2 == null) {
            return zzaqVarZzf;
        }
        throw zzagVar2.zza();
    }
}
