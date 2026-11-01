package com.google.android.gms.internal.measurement;

import com.google.common.base.m;
import com.google.common.collect.ImmutableMultimap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhy {
    private final boolean zza;

    public zzhy(zzhx zzhxVar) {
        m.p(zzhxVar, "BuildInfo must be non-null");
        this.zza = !zzhxVar.zza();
    }

    public final boolean zza(String str) {
        m.p(str, "flagName must not be null");
        if (this.zza) {
            return ((ImmutableMultimap) zzia.zza.get()).containsValue(str);
        }
        return true;
    }
}
