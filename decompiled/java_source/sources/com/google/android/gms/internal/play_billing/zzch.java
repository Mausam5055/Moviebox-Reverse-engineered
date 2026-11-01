package com.google.android.gms.internal.play_billing;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzch implements zzca {
    private final String zza;
    private final zzbd zzb;
    private final Level zzc;
    private final Set zzd;
    private final zzbq zze;

    private zzch() {
        zzbe zzbeVar = zzbe.DEFAULT;
        throw null;
    }

    private zzch(String str, boolean z10, zzbd zzbdVar, Level level, boolean z11, Set set, zzbq zzbqVar) {
        this.zza = "";
        this.zzb = zzbdVar;
        this.zzc = level;
        this.zzd = set;
        this.zze = zzbqVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzca
    public final zzbf zza(String str) {
        return new zzck(this.zza, str, true, this.zzb, this.zzc, this.zzd, this.zze, null);
    }

    public final zzch zzb(boolean z10) {
        Set set = this.zzd;
        zzbq zzbqVar = this.zze;
        return new zzch(this.zza, true, this.zzb, Level.OFF, false, set, zzbqVar);
    }
}
