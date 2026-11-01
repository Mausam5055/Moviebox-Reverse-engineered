package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzavb {
    private static final zzava zza;
    private static final zzava zzb;

    static {
        zzava zzavaVar = null;
        try {
            zzavaVar = (zzava) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzavaVar;
        zzb = new zzava();
    }

    static zzava zza() {
        return zza;
    }

    static zzava zzb() {
        return zzb;
    }
}
