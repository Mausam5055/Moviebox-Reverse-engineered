package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhe {
    private static final zzhe zza = new zzhe(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhe() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhe(int i11, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i11;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzhe zzc() {
        return zza;
    }

    static zzhe zze(zzhe zzheVar, zzhe zzheVar2) {
        int i11 = zzheVar.zzb + zzheVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzheVar.zzc, i11);
        System.arraycopy(zzheVar2.zzc, 0, iArrCopyOf, zzheVar.zzb, zzheVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzheVar.zzd, i11);
        System.arraycopy(zzheVar2.zzd, 0, objArrCopyOf, zzheVar.zzb, zzheVar2.zzb);
        return new zzhe(i11, iArrCopyOf, objArrCopyOf, true);
    }

    static zzhe zzf() {
        return new zzhe(0, new int[8], new Object[8], true);
    }

    private final void zzl(int i11) {
        int[] iArr = this.zzc;
        if (i11 > iArr.length) {
            int i12 = this.zzb;
            int i13 = i12 + (i12 / 2);
            if (i13 >= i11) {
                i11 = i13;
            }
            if (i11 < 8) {
                i11 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i11);
            this.zzd = Arrays.copyOf(this.zzd, i11);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhe)) {
            return false;
        }
        zzhe zzheVar = (zzhe) obj;
        int i11 = this.zzb;
        if (i11 == zzheVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzheVar.zzc;
            for (int i12 = 0; i12 < i11; i12++) {
                if (iArr[i12] == iArr2[i12]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzheVar.zzd;
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
        int i12 = i11 + 527;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = ((i12 * 31) + i13) * 31;
        Object[] objArr = this.zzd;
        int i16 = this.zzb;
        for (int i17 = 0; i17 < i16; i17++) {
            iHashCode = (iHashCode * 31) + objArr[i17].hashCode();
        }
        return i15 + iHashCode;
    }

    public final int zza() {
        int iZzy;
        int iZzx;
        int iZzx2;
        int i11 = this.zze;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzb; i13++) {
            int i14 = this.zzc[i13];
            int i15 = i14 >>> 3;
            int i16 = i14 & 7;
            if (i16 != 0) {
                if (i16 == 1) {
                    ((Long) this.zzd[i13]).longValue();
                    iZzx2 = zzee.zzx(i15 << 3) + 8;
                } else if (i16 == 2) {
                    int i17 = i15 << 3;
                    zzdw zzdwVar = (zzdw) this.zzd[i13];
                    int i18 = zzee.zzb;
                    int iZzd = zzdwVar.zzd();
                    iZzx2 = zzee.zzx(i17) + zzee.zzx(iZzd) + iZzd;
                } else if (i16 == 3) {
                    int i19 = i15 << 3;
                    int i20 = zzee.zzb;
                    iZzy = ((zzhe) this.zzd[i13]).zza();
                    int iZzx3 = zzee.zzx(i19);
                    iZzx = iZzx3 + iZzx3;
                } else {
                    if (i16 != 5) {
                        throw new IllegalStateException(zzff.zza());
                    }
                    ((Integer) this.zzd[i13]).intValue();
                    iZzx2 = zzee.zzx(i15 << 3) + 4;
                }
                i12 += iZzx2;
            } else {
                int i21 = i15 << 3;
                iZzy = zzee.zzy(((Long) this.zzd[i13]).longValue());
                iZzx = zzee.zzx(i21);
            }
            iZzx2 = iZzx + iZzy;
            i12 += iZzx2;
        }
        this.zze = i12;
        return i12;
    }

    public final int zzb() {
        int i11 = this.zze;
        if (i11 != -1) {
            return i11;
        }
        int iZzx = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12] >>> 3;
            zzdw zzdwVar = (zzdw) this.zzd[i12];
            int i14 = zzee.zzb;
            int iZzd = zzdwVar.zzd();
            int iZzx2 = zzee.zzx(iZzd) + iZzd;
            int iZzx3 = zzee.zzx(16);
            int iZzx4 = zzee.zzx(i13);
            int iZzx5 = zzee.zzx(8);
            iZzx += iZzx5 + iZzx5 + iZzx3 + iZzx4 + zzee.zzx(24) + iZzx2;
        }
        this.zze = iZzx;
        return iZzx;
    }

    final zzhe zzd(zzhe zzheVar) {
        if (zzheVar.equals(zza)) {
            return this;
        }
        zzg();
        int i11 = this.zzb + zzheVar.zzb;
        zzl(i11);
        System.arraycopy(zzheVar.zzc, 0, this.zzc, this.zzb, zzheVar.zzb);
        System.arraycopy(zzheVar.zzd, 0, this.zzd, this.zzb, zzheVar.zzb);
        this.zzb = i11;
        return this;
    }

    final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    final void zzi(StringBuilder sb2, int i11) {
        for (int i12 = 0; i12 < this.zzb; i12++) {
            zzge.zzb(sb2, i11, String.valueOf(this.zzc[i12] >>> 3), this.zzd[i12]);
        }
    }

    final void zzj(int i11, Object obj) {
        zzg();
        zzl(this.zzb + 1);
        int[] iArr = this.zzc;
        int i12 = this.zzb;
        iArr[i12] = i11;
        this.zzd[i12] = obj;
        this.zzb = i12 + 1;
    }

    public final void zzk(zzhv zzhvVar) throws IOException {
        if (this.zzb != 0) {
            for (int i11 = 0; i11 < this.zzb; i11++) {
                int i12 = this.zzc[i11];
                Object obj = this.zzd[i11];
                int i13 = i12 & 7;
                int i14 = i12 >>> 3;
                if (i13 == 0) {
                    zzhvVar.zzt(i14, ((Long) obj).longValue());
                } else if (i13 == 1) {
                    zzhvVar.zzm(i14, ((Long) obj).longValue());
                } else if (i13 == 2) {
                    zzhvVar.zzd(i14, (zzdw) obj);
                } else if (i13 == 3) {
                    zzhvVar.zzE(i14);
                    ((zzhe) obj).zzk(zzhvVar);
                    zzhvVar.zzh(i14);
                } else {
                    if (i13 != 5) {
                        throw new RuntimeException(zzff.zza());
                    }
                    zzhvVar.zzk(i14, ((Integer) obj).intValue());
                }
            }
        }
    }
}
