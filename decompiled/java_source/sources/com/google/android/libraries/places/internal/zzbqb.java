package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
final class zzbqb extends zzbpz {
    private final AtomicIntegerFieldUpdater zza;

    /* synthetic */ zzbqb(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, zzbqa zzbqaVar) {
        super(null);
        this.zza = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.libraries.places.internal.zzbpz
    public final void zza(zzbqe zzbqeVar, int i11) {
        this.zza.set(zzbqeVar, 0);
    }

    @Override // com.google.android.libraries.places.internal.zzbpz
    public final boolean zzb(zzbqe zzbqeVar, int i11, int i12) {
        return this.zza.compareAndSet(zzbqeVar, 0, -1);
    }
}
