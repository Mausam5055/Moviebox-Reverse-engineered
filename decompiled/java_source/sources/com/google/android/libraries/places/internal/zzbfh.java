package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.event.EventConstants;
import java.text.MessageFormat;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
final class zzbfh extends zzaym {
    private final zzbfi zza;
    private final zzbqt zzb;

    zzbfh(zzbfi zzbfiVar, zzbqt zzbqtVar) {
        zzmt.zzc(zzbfiVar, "tracer");
        this.zza = zzbfiVar;
        zzmt.zzc(zzbqtVar, EventConstants.KEY_TIME);
        this.zzb = zzbqtVar;
    }

    private static Level zzc(int i11) {
        int i12 = i11 - 1;
        if (i12 != 1) {
            return (i12 == 2 || i12 == 3) ? Level.FINE : Level.FINEST;
        }
        return Level.FINER;
    }

    private final boolean zzd(int i11) {
        if (i11 == 1) {
            return false;
        }
        this.zza.zzd();
        return false;
    }

    @Override // com.google.android.libraries.places.internal.zzaym
    public final void zza(int i11, String str) {
        zzbap zzbapVarZza = this.zza.zza();
        Level levelZzc = zzc(i11);
        if (zzbfi.zza.isLoggable(levelZzc)) {
            zzbfi.zzb(zzbapVarZza, levelZzc, str);
        }
        zzd(i11);
    }

    @Override // com.google.android.libraries.places.internal.zzaym
    public final void zzb(int i11, String str, Object... objArr) {
        Level levelZzc = zzc(i11);
        zzd(i11);
        zza(i11, zzbfi.zza.isLoggable(levelZzc) ? MessageFormat.format(str, objArr) : null);
    }
}
