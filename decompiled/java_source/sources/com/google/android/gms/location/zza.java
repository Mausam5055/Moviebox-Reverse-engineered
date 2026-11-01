package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: loaded from: classes4.dex */
@ShowFirstParty
public final class zza {
    private long zza = Long.MIN_VALUE;

    public final zza zza(long j11) {
        Preconditions.checkArgument(j11 >= 0, "intervalMillis can't be negative.");
        this.zza = j11;
        return this;
    }

    public final zzb zzb() {
        Preconditions.checkState(this.zza != Long.MIN_VALUE, "Must set intervalMillis.");
        return new zzb(this.zza, true, null, null, null, false, null, 0L, null);
    }
}
