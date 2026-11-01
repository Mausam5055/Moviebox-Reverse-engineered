package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public final class RootTelemetryConfigManager {

    @Nullable
    private static RootTelemetryConfigManager zza;
    private static final RootTelemetryConfiguration zzb = new RootTelemetryConfiguration(0, false, false, 0, 0);

    @Nullable
    private RootTelemetryConfiguration zzc;

    private RootTelemetryConfigManager() {
    }

    @NonNull
    @KeepForSdk
    public static synchronized RootTelemetryConfigManager getInstance() {
        try {
            if (zza == null) {
                zza = new RootTelemetryConfigManager();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zza;
    }

    @Nullable
    @KeepForSdk
    public RootTelemetryConfiguration getConfig() {
        return this.zzc;
    }

    public final synchronized void zza(@Nullable RootTelemetryConfiguration rootTelemetryConfiguration) {
        try {
            if (rootTelemetryConfiguration == null) {
                this.zzc = zzb;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.zzc;
            if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
                this.zzc = rootTelemetryConfiguration;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
