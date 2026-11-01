package com.google.android.libraries.places.internal;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzbqs implements zzbqt {
    zzbqs() {
    }

    @Override // com.google.android.libraries.places.internal.zzbqt
    public final long zza() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }
}
