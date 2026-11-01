package com.google.android.libraries.places.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzavp {
    private static final zzavp zza = new zzavp();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzavu zzb = new zzaux();

    private zzavp() {
    }

    public static zzavp zza() {
        return zza;
    }

    public final zzavt zzb(Class cls) {
        zzaud.zzc(cls, "messageType");
        zzavt zzavtVarZza = (zzavt) this.zzc.get(cls);
        if (zzavtVarZza == null) {
            zzavtVarZza = this.zzb.zza(cls);
            zzaud.zzc(cls, "messageType");
            zzavt zzavtVar = (zzavt) this.zzc.putIfAbsent(cls, zzavtVarZza);
            if (zzavtVar != null) {
                return zzavtVar;
            }
        }
        return zzavtVarZza;
    }
}
