package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zznw {
    private String zza;
    private Map<String, String> zzb;

    @NonNull
    private zznt zzc;

    zznw(String str, zznt zzntVar) {
        this.zza = str;
        this.zzc = zzntVar;
    }

    zznw(String str, Map<String, String> map, zznt zzntVar) {
        this.zza = str;
        this.zzb = map;
        this.zzc = zzntVar;
    }

    public final zznt zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zza;
    }

    @NonNull
    public final Map<String, String> zzc() {
        Map<String, String> map = this.zzb;
        return map == null ? Collections.emptyMap() : map;
    }
}
