package com.google.android.libraries.places.internal;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbjj {
    private final ArrayList zza = new ArrayList();

    public final String toString() {
        return this.zza.toString();
    }

    public final zzbjj zza(Object obj) {
        this.zza.add(obj.toString());
        return this;
    }

    public final zzbjj zzb(String str, Object obj) {
        this.zza.add(str + UrlUtils.EQUAL_MARK + String.valueOf(obj));
        return this;
    }
}
