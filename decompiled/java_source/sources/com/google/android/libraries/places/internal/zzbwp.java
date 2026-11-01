package com.google.android.libraries.places.internal;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbwp extends zzbwf {
    private final transient byte[][] zzc;
    private final transient int[] zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbwp(byte[][] segments, int[] directory) {
        super(zzbwf.zzb.zzn());
        Intrinsics.h(segments, "segments");
        Intrinsics.h(directory, "directory");
        this.zzc = segments;
        this.zzd = directory;
    }

    private final zzbwf zzs() {
        return new zzbwf(zzp());
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbwf) {
            zzbwf zzbwfVar = (zzbwf) obj;
            if (zzbwfVar.zzc() == zzc() && zzk(0, zzbwfVar, 0, zzc())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final int hashCode() {
        int iZzb = zzb();
        if (iZzb != 0) {
            return iZzb;
        }
        byte[][] bArr = this.zzc;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int length = bArr.length;
            if (i11 >= length) {
                zzh(i12);
                return i12;
            }
            int[] iArr = this.zzd;
            byte[][] bArr2 = this.zzc;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i13) + i14;
            byte[] bArr3 = bArr2[i11];
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr3[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final String toString() {
        return zzs().toString();
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final byte zza(int i11) {
        zzbvv.zzb(this.zzd[this.zzc.length - 1], i11, 1L);
        int iZza = zzbwz.zza(this, i11);
        int i12 = iZza == 0 ? 0 : this.zzd[iZza - 1];
        int[] iArr = this.zzd;
        byte[][] bArr = this.zzc;
        return bArr[iZza][(i11 - i12) + iArr[bArr.length + iZza]];
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final int zzc() {
        return this.zzd[this.zzc.length - 1];
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final String zze() {
        return zzs().zze();
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final zzbwf zzg() {
        return zzs().zzg();
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final void zzj(zzbwb buffer, int i11, int i12) {
        int i13;
        Intrinsics.h(buffer, "buffer");
        int iZza = zzbwz.zza(this, 0);
        int i14 = 0;
        while (i14 < i12) {
            if (iZza == 0) {
                iZza = 0;
                i13 = 0;
            } else {
                i13 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i15 = iArr[iZza] - i13;
            int i16 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i12, i15 + i13) - i14;
            int i17 = i16 + (i14 - i13);
            zzbwn zzbwnVar = new zzbwn(this.zzc[iZza], i17, i17 + iMin, true, false);
            zzbwn zzbwnVar2 = buffer.zza;
            if (zzbwnVar2 == null) {
                zzbwnVar.zzh = zzbwnVar;
                zzbwnVar.zzg = zzbwnVar;
                buffer.zza = zzbwnVar;
            } else {
                Intrinsics.e(zzbwnVar2);
                zzbwn zzbwnVar3 = zzbwnVar2.zzh;
                Intrinsics.e(zzbwnVar3);
                zzbwnVar3.zzb(zzbwnVar);
            }
            i14 += iMin;
            iZza++;
        }
        buffer.zzE(buffer.zzg() + ((long) i12));
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final boolean zzk(int i11, zzbwf other, int i12, int i13) {
        int i14;
        Intrinsics.h(other, "other");
        if (zzc() - i13 < 0) {
            return false;
        }
        int iZza = zzbwz.zza(this, 0);
        int i15 = 0;
        int i16 = 0;
        while (i15 < i13) {
            if (iZza == 0) {
                iZza = 0;
                i14 = 0;
            } else {
                i14 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i17 = iArr[iZza] - i14;
            int i18 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i13, i17 + i14) - i15;
            if (!other.zzl(i16, this.zzc[iZza], i18 + (i15 - i14), iMin)) {
                return false;
            }
            i16 += iMin;
            i15 += iMin;
            iZza++;
        }
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final boolean zzl(int i11, byte[] other, int i12, int i13) {
        int i14;
        Intrinsics.h(other, "other");
        if (i11 < 0 || i11 > zzc() - i13 || i12 < 0 || i12 > other.length - i13) {
            return false;
        }
        int i15 = i13 + i11;
        int iZza = zzbwz.zza(this, i11);
        while (i11 < i15) {
            if (iZza == 0) {
                iZza = 0;
                i14 = 0;
            } else {
                i14 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i16 = iArr[iZza] - i14;
            int i17 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i15, i16 + i14) - i11;
            if (!zzbvv.zzc(this.zzc[iZza], i17 + (i11 - i14), other, i12, iMin)) {
                return false;
            }
            i12 += iMin;
            i11 += iMin;
            iZza++;
        }
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final byte[] zzo() {
        return zzp();
    }

    @Override // com.google.android.libraries.places.internal.zzbwf
    public final byte[] zzp() {
        byte[] bArr = new byte[zzc()];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            byte[][] bArr2 = this.zzc;
            int length = bArr2.length;
            if (i11 >= length) {
                return bArr;
            }
            int[] iArr = this.zzd;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = i15 - i12;
            ArraysKt.j(bArr2[i11], bArr, i13, i14, i14 + i16);
            i13 += i16;
            i11++;
            i12 = i15;
        }
    }

    public final int[] zzq() {
        return this.zzd;
    }

    public final byte[][] zzr() {
        return this.zzc;
    }
}
