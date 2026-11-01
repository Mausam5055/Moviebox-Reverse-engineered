package com.google.android.gms.internal.identity;

/* JADX INFO: loaded from: classes4.dex */
final class zzev extends zzet {
    private final zzex zza;

    zzev(zzex zzexVar, int i11) {
        super(zzexVar.size(), i11);
        this.zza = zzexVar;
    }

    @Override // com.google.android.gms.internal.identity.zzet
    protected final Object zza(int i11) {
        return this.zza.get(i11);
    }
}
