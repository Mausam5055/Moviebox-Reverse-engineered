package com.google.android.libraries.places.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzazd {
    private static final zzazd zza = new zzazd(new zzayz(), zzaza.zza);
    private final ConcurrentMap zzb = new ConcurrentHashMap();

    zzazd(zzazc... zzazcVarArr) {
        for (int i11 = 0; i11 < 2; i11++) {
            zzazc zzazcVar = zzazcVarArr[i11];
            this.zzb.put(zzazcVar.zzb(), zzazcVar);
        }
    }

    public static zzazd zza() {
        return zza;
    }
}
