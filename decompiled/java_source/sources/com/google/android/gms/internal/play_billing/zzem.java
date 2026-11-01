package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzem {
    private static final zzek zza = new zzel();
    private static final zzek zzb;

    static {
        zzek zzekVar = null;
        try {
            zzekVar = (zzek) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zzb = zzekVar;
    }

    static zzek zza() {
        zzek zzekVar = zzb;
        if (zzekVar != null) {
            return zzekVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zzek zzb() {
        return zza;
    }
}
