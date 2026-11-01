package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
final class zzbox {
    private final AtomicLong zza = new AtomicLong();

    zzbox() {
    }

    final long zza(long j11) {
        return this.zza.addAndGet(j11);
    }
}
