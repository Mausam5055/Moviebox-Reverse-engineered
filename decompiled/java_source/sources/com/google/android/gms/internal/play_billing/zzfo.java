package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzfo extends zzfq {
    private zzfo() {
        super(null);
    }

    /* synthetic */ zzfo(zzfn zzfnVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zza(Object obj, long j11) {
        ((zzfc) zzhn.zzf(obj, j11)).zzb();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zzb(Object obj, Object obj2, long j11) {
        zzfc zzfcVarZzd = (zzfc) zzhn.zzf(obj, j11);
        zzfc zzfcVar = (zzfc) zzhn.zzf(obj2, j11);
        int size = zzfcVarZzd.size();
        int size2 = zzfcVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzfcVarZzd.zzc()) {
                zzfcVarZzd = zzfcVarZzd.zzd(size2 + size);
            }
            zzfcVarZzd.addAll(zzfcVar);
        }
        if (size > 0) {
            zzfcVar = zzfcVarZzd;
        }
        zzhn.zzs(obj, j11, zzfcVar);
    }
}
