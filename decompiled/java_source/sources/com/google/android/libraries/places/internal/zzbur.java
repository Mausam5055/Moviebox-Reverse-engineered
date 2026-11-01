package com.google.android.libraries.places.internal;

import com.meituan.android.walle.ChannelReader;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbur {
    private final zzayk zza;
    private final zzayj zzb;

    protected zzbur(zzayk zzaykVar, zzayj zzayjVar) {
        zzmt.zzc(zzaykVar, ChannelReader.CHANNEL_KEY);
        this.zza = zzaykVar;
        this.zzb = zzayjVar;
    }

    protected abstract zzbur zza(zzayk zzaykVar, zzayj zzayjVar);

    public final zzayj zzc() {
        return this.zzb;
    }

    public final zzayk zzd() {
        return this.zza;
    }

    public final zzbur zze(zzayp... zzaypVarArr) {
        return zza(zzayt.zza(this.zza, Arrays.asList(zzaypVarArr)), this.zzb);
    }
}
