package com.google.android.libraries.places.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfi {
    private final zzjt zza;

    protected zzfi(zzjt zzjtVar) {
        this.zza = zzjtVar;
    }

    @Nullable
    protected final CancellationToken zza() {
        return this.zza.getCancellationToken();
    }

    protected final zzjt zzb() {
        return this.zza;
    }

    protected abstract String zzc();

    protected abstract Map zzd();
}
