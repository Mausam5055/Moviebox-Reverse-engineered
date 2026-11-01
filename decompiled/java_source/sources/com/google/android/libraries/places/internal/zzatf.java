package com.google.android.libraries.places.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzatf {
    static final zzatf zza = new zzatf(true);
    private static volatile boolean zzb;
    private final Map zzc;

    zzatf() {
        this.zzc = new HashMap();
    }

    zzatf(boolean z10) {
        this.zzc = Collections.emptyMap();
    }

    public static zzatf zza() {
        return zza;
    }

    public final zzats zzb(zzavf zzavfVar, int i11) {
        return (zzats) this.zzc.get(new zzate(zzavfVar, i11));
    }
}
