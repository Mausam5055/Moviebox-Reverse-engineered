package com.google.android.libraries.places.internal;

import com.cloud.tmc.kernel.utils.UrlUtils;

/* JADX INFO: loaded from: classes4.dex */
final class zzny {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    zzny(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    final IllegalArgumentException zza() {
        Object obj = this.zzc;
        Object obj2 = this.zzb;
        Object obj3 = this.zza;
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(obj3) + UrlUtils.EQUAL_MARK + String.valueOf(obj2) + " and " + String.valueOf(obj3) + UrlUtils.EQUAL_MARK + String.valueOf(obj));
    }
}
