package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzft implements zzga {
    private final zzga[] zza;

    zzft(zzga... zzgaVarArr) {
        this.zza = zzgaVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzga
    public final zzfz zzb(Class cls) {
        for (int i11 = 0; i11 < 2; i11++) {
            zzga zzgaVar = this.zza[i11];
            if (zzgaVar.zzc(cls)) {
                return zzgaVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.zzga
    public final boolean zzc(Class cls) {
        for (int i11 = 0; i11 < 2; i11++) {
            if (this.zza[i11].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
