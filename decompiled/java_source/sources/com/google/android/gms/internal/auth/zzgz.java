package com.google.android.gms.internal.auth;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgz {
    private static final zzgz zza = new zzgz(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private boolean zze;

    private zzgz() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgz(int i11, int[] iArr, Object[] objArr, boolean z10) {
        this.zzb = i11;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = z10;
    }

    public static zzgz zza() {
        return zza;
    }

    static zzgz zzb(zzgz zzgzVar, zzgz zzgzVar2) {
        int i11 = zzgzVar.zzb + zzgzVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzgzVar.zzc, i11);
        System.arraycopy(zzgzVar2.zzc, 0, iArrCopyOf, zzgzVar.zzb, zzgzVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzgzVar.zzd, i11);
        System.arraycopy(zzgzVar2.zzd, 0, objArrCopyOf, zzgzVar.zzb, zzgzVar2.zzb);
        return new zzgz(i11, iArrCopyOf, objArrCopyOf, true);
    }

    static zzgz zzc() {
        return new zzgz(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        int i11 = this.zzb;
        if (i11 == zzgzVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzgzVar.zzc;
            for (int i12 = 0; i12 < i11; i12++) {
                if (iArr[i12] == iArr2[i12]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzgzVar.zzd;
            int i13 = this.zzb;
            for (int i14 = 0; i14 < i13; i14++) {
                if (objArr[i14].equals(objArr2[i14])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i11 = this.zzb;
        int i12 = (i11 + 527) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = (i12 + i13) * 31;
        Object[] objArr = this.zzd;
        int i16 = this.zzb;
        for (int i17 = 0; i17 < i16; i17++) {
            iHashCode = (iHashCode * 31) + objArr[i17].hashCode();
        }
        return i15 + iHashCode;
    }

    public final void zzd() {
        this.zze = false;
    }

    final void zze(StringBuilder sb2, int i11) {
        for (int i12 = 0; i12 < this.zzb; i12++) {
            zzfy.zzb(sb2, i11, String.valueOf(this.zzc[i12] >>> 3), this.zzd[i12]);
        }
    }

    final void zzf(int i11, Object obj) {
        if (!this.zze) {
            throw new UnsupportedOperationException();
        }
        int i12 = this.zzb;
        int[] iArr = this.zzc;
        if (i12 == iArr.length) {
            int i13 = i12 + (i12 < 4 ? 8 : i12 >> 1);
            this.zzc = Arrays.copyOf(iArr, i13);
            this.zzd = Arrays.copyOf(this.zzd, i13);
        }
        int[] iArr2 = this.zzc;
        int i14 = this.zzb;
        iArr2[i14] = i11;
        this.zzd[i14] = obj;
        this.zzb = i14 + 1;
    }
}
