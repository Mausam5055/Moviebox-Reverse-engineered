package com.google.android.gms.measurement.internal;

import androidx.collection.z;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzho extends z {
    private final /* synthetic */ zzhl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzho(zzhl zzhlVar, int i11) {
        super(20);
        this.zza = zzhlVar;
    }

    @Override // androidx.collection.z
    protected final /* synthetic */ Object create(Object obj) {
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        return zzhl.zza(this.zza, str);
    }
}
