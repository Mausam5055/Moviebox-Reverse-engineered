package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhc extends RuntimeException {
    public zzhc(zzgc zzgcVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzff zza() {
        return new zzff(getMessage());
    }
}
