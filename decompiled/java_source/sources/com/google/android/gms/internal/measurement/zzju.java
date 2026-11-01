package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzju implements zzkz {
    private static final zzju zza = new zzju();

    private zzju() {
    }

    public static zzju zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzkz
    public final zzla zza(Class<?> cls) {
        if (!zzjt.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (zzla) zzjt.zza(cls.asSubclass(zzjt.class)).zza(zzjt.zze.zzc, (Object) null, (Object) null);
        } catch (Exception e11) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkz
    public final boolean zzb(Class<?> cls) {
        return zzjt.class.isAssignableFrom(cls);
    }
}
