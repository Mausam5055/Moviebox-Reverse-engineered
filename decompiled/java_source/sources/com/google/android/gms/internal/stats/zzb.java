package com.google.android.gms.internal.stats;

import androidx.annotation.Nullable;
import java.io.Closeable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzb implements Closeable {
    private static final zzb zza = new zzb(false, null);

    private zzb(boolean z10, @Nullable zzd zzdVar) {
    }

    public static zzb zza(boolean z10, @Nullable zzc zzcVar) {
        return zza;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
