package com.google.android.libraries.places.internal;

import com.cloud.tmc.miniapp.bridge.BluetoothBridge;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbbo extends zzbbb {
    private static final zzbcp zza = zzbcp.zza(new zzbbn());

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("policy", zzd());
        zzmmVarZzb.zzb(TrackingKey.PRIORITY, 5);
        zzmmVarZzb.zze(BluetoothBridge.EXTEA_AVALIABLE, true);
        return zzmmVarZzb.toString();
    }

    public abstract int zzb();

    public zzbcp zzc(Map map) {
        throw null;
    }

    public abstract String zzd();

    public abstract boolean zze();
}
