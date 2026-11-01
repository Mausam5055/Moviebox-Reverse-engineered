package com.google.android.gms.internal.play_billing;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzej {
    static final zzej zza = new zzej(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc;
    private static volatile zzej zzd;
    private final Map zze;

    zzej() {
        this.zze = new HashMap();
    }

    zzej(boolean z10) {
        this.zze = Collections.emptyMap();
    }

    public static zzej zza() {
        zzej zzejVar = zzd;
        if (zzejVar != null) {
            return zzejVar;
        }
        synchronized (zzej.class) {
            try {
                zzej zzejVar2 = zzd;
                if (zzejVar2 != null) {
                    return zzejVar2;
                }
                zzej zzejVarZzb = zzer.zzb(zzej.class);
                zzd = zzejVarZzb;
                return zzejVarZzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final zzev zzb(zzgc zzgcVar, int i11) {
        return (zzev) this.zze.get(new zzei(zzgcVar, i11));
    }
}
