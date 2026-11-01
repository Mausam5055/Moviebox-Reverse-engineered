package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgz {
    private final String zza;
    private final boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private final /* synthetic */ zzha zze;

    public zzgz(zzha zzhaVar, String str, boolean z10) {
        this.zze = zzhaVar;
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        this.zzb = z10;
    }

    public final void zza(boolean z10) {
        SharedPreferences.Editor editorEdit = this.zze.zzg().edit();
        editorEdit.putBoolean(this.zza, z10);
        editorEdit.apply();
        this.zzd = z10;
    }

    public final boolean zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zze.zzg().getBoolean(this.zza, this.zzb);
        }
        return this.zzd;
    }
}
