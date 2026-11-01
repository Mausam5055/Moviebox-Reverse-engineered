package com.google.android.gms.internal.common;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzad extends zzaa {
    public zzad() {
        super(4);
    }

    zzad(int i11) {
        super(4);
    }

    public final zzad zzb(Object obj) {
        super.zza(obj);
        return this;
    }

    public final zzad zzc(Iterator it) {
        while (it.hasNext()) {
            super.zza(it.next());
        }
        return this;
    }
}
