package com.google.android.libraries.places.internal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzph {
    private final Map zza = new HashMap();

    private zzph() {
    }

    /* synthetic */ zzph(zzpg zzpgVar) {
    }

    public final zzpd zza() {
        return new zzpf(this, this.zza, (char) 0, (char) 65535);
    }

    public final zzph zzb(char c11, String str) {
        this.zza.put(Character.valueOf(c11), str);
        return this;
    }
}
