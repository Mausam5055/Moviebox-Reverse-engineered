package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzauw implements zzavd {
    private final zzavd[] zza;

    zzauw(zzavd... zzavdVarArr) {
        this.zza = zzavdVarArr;
    }

    @Override // com.google.android.libraries.places.internal.zzavd
    public final zzavc zzb(Class cls) {
        for (int i11 = 0; i11 < 2; i11++) {
            zzavd zzavdVar = this.zza[i11];
            if (zzavdVar.zzc(cls)) {
                return zzavdVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.libraries.places.internal.zzavd
    public final boolean zzc(Class cls) {
        for (int i11 = 0; i11 < 2; i11++) {
            if (this.zza[i11].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
