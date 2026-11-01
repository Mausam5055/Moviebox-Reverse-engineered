package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzawo {
    private static final zzawo zza = new zzawo(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzawo() {
        this(0, new int[8], new Object[8], true);
    }

    private zzawo(int i11, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i11;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzawo zzc() {
        return zza;
    }

    static zzawo zze(zzawo zzawoVar, zzawo zzawoVar2) {
        int i11 = zzawoVar.zzb + zzawoVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzawoVar.zzc, i11);
        System.arraycopy(zzawoVar2.zzc, 0, iArrCopyOf, zzawoVar.zzb, zzawoVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzawoVar.zzd, i11);
        System.arraycopy(zzawoVar2.zzd, 0, objArrCopyOf, zzawoVar.zzb, zzawoVar2.zzb);
        return new zzawo(i11, iArrCopyOf, objArrCopyOf, true);
    }

    static zzawo zzf() {
        return new zzawo(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i11) {
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
        if (obj == null || !(obj instanceof zzawo)) {
            return false;
        }
        zzawo zzawoVar = (zzawo) obj;
        int i11 = this.zzb;
        if (i11 == zzawoVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzawoVar.zzc;
            for (int i12 = 0; i12 < i11; i12++) {
                if (iArr[i12] == iArr2[i12]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzawoVar.zzd;
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
        int iZzB;
        int iZzC;
        int iZzB2;
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
                    iZzB2 = zzasx.zzB(i15 << 3) + 8;
                } else if (i16 == 2) {
                    int i17 = i15 << 3;
                    zzask zzaskVar = (zzask) this.zzd[i13];
                    int iZzB3 = zzasx.zzB(i17);
                    int iZzd = zzaskVar.zzd();
                    iZzB2 = iZzB3 + zzasx.zzB(iZzd) + iZzd;
                } else if (i16 == 3) {
                    int iZzB4 = zzasx.zzB(i15 << 3);
                    iZzB = iZzB4 + iZzB4;
                    iZzC = ((zzawo) this.zzd[i13]).zza();
                } else {
                    if (i16 != 5) {
                        throw new IllegalStateException(zzauf.zza());
                    }
                    ((Integer) this.zzd[i13]).intValue();
                    iZzB2 = zzasx.zzB(i15 << 3) + 4;
                }
                i12 += iZzB2;
            } else {
                int i18 = i15 << 3;
                long jLongValue = ((Long) this.zzd[i13]).longValue();
                iZzB = zzasx.zzB(i18);
                iZzC = zzasx.zzC(jLongValue);
            }
            iZzB2 = iZzB + iZzC;
            i12 += iZzB2;
        }
        this.zze = i12;
        return i12;
    }

    public final int zzb() {
        int i11 = this.zze;
        if (i11 != -1) {
            return i11;
        }
        int iZzB = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12] >>> 3;
            zzask zzaskVar = (zzask) this.zzd[i12];
            int iZzB2 = zzasx.zzB(8);
            int iZzB3 = zzasx.zzB(16) + zzasx.zzB(i13);
            int iZzB4 = zzasx.zzB(24);
            int iZzd = zzaskVar.zzd();
            iZzB += iZzB2 + iZzB2 + iZzB3 + iZzB4 + zzasx.zzB(iZzd) + iZzd;
        }
        this.zze = iZzB;
        return iZzB;
    }

    final zzawo zzd(zzawo zzawoVar) {
        if (zzawoVar.equals(zza)) {
            return this;
        }
        zzg();
        int i11 = this.zzb + zzawoVar.zzb;
        zzm(i11);
        System.arraycopy(zzawoVar.zzc, 0, this.zzc, this.zzb, zzawoVar.zzb);
        System.arraycopy(zzawoVar.zzd, 0, this.zzd, this.zzb, zzawoVar.zzb);
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
            zzavh.zzb(sb2, i11, String.valueOf(this.zzc[i12] >>> 3), this.zzd[i12]);
        }
    }

    final void zzj(int i11, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i12 = this.zzb;
        iArr[i12] = i11;
        this.zzd[i12] = obj;
        this.zzb = i12 + 1;
    }

    final void zzk(zzasy zzasyVar) throws IOException {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzasyVar.zzw(this.zzc[i11] >>> 3, this.zzd[i11]);
        }
    }

    public final void zzl(zzasy zzasyVar) throws IOException {
        if (this.zzb != 0) {
            for (int i11 = 0; i11 < this.zzb; i11++) {
                int i12 = this.zzc[i11];
                Object obj = this.zzd[i11];
                int i13 = i12 & 7;
                int i14 = i12 >>> 3;
                if (i13 == 0) {
                    zzasyVar.zzt(i14, ((Long) obj).longValue());
                } else if (i13 == 1) {
                    zzasyVar.zzm(i14, ((Long) obj).longValue());
                } else if (i13 == 2) {
                    zzasyVar.zzd(i14, (zzask) obj);
                } else if (i13 == 3) {
                    zzasyVar.zzF(i14);
                    ((zzawo) obj).zzl(zzasyVar);
                    zzasyVar.zzh(i14);
                } else {
                    if (i13 != 5) {
                        throw new RuntimeException(zzauf.zza());
                    }
                    zzasyVar.zzk(i14, ((Integer) obj).intValue());
                }
            }
        }
    }
}
