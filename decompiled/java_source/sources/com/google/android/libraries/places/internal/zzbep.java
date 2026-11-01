package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
final class zzbep implements zzbkj {
    private final AtomicLong zza = new AtomicLong();

    zzbep() {
    }

    @Override // com.google.android.libraries.places.internal.zzbkj
    public final void zza(long j11) {
        this.zza.getAndAdd(1L);
    }
}
