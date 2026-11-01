package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzavr implements zzavc {
    private final zzavf zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    zzavr(zzavf zzavfVar, String str, Object[] objArr) {
        this.zza = zzavfVar;
        this.zzb = str;
        this.zzc = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.zzd = cCharAt;
            return;
        }
        int i11 = cCharAt & 8191;
        int i12 = 1;
        int i13 = 13;
        while (true) {
            int i14 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.zzd = i11 | (cCharAt2 << i13);
                return;
            } else {
                i11 |= (cCharAt2 & 8191) << i13;
                i13 += 13;
                i12 = i14;
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzavc
    public final zzavf zza() {
        return this.zza;
    }

    @Override // com.google.android.libraries.places.internal.zzavc
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.libraries.places.internal.zzavc
    public final int zzc() {
        int i11 = this.zzd;
        if ((i11 & 1) != 0) {
            return 1;
        }
        return (i11 & 4) == 4 ? 3 : 2;
    }

    final String zzd() {
        return this.zzb;
    }

    final Object[] zze() {
        return this.zzc;
    }
}
