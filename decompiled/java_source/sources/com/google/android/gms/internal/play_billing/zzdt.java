package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
class zzdt extends zzds {
    protected final byte[] zza;

    zzdt(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdw) || zzd() != ((zzdw) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzdt)) {
            return obj.equals(this);
        }
        zzdt zzdtVar = (zzdt) obj;
        int iZzk = zzk();
        int iZzk2 = zzdtVar.zzk();
        if (iZzk != 0 && iZzk2 != 0 && iZzk != iZzk2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzdtVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzdtVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzdtVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzdtVar.zza;
        zzdtVar.zzc();
        int i11 = 0;
        int i12 = 0;
        while (i11 < iZzd) {
            if (bArr[i11] != bArr2[i12]) {
                return false;
            }
            i11++;
            i12++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public byte zza(int i11) {
        return this.zza[i11];
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    byte zzb(int i11) {
        return this.zza[i11];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    protected final int zze(int i11, int i12, int i13) {
        return zzfd.zzb(i11, this.zza, 0, i13);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final zzdw zzf(int i11, int i12) {
        int iZzj = zzdw.zzj(0, i12, zzd());
        return iZzj == 0 ? zzdw.zzb : new zzdq(this.zza, 0, iZzj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    final void zzh(zzdm zzdmVar) throws IOException {
        ((zzeb) zzdmVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final boolean zzi() {
        return zzhs.zze(this.zza, 0, zzd());
    }
}
