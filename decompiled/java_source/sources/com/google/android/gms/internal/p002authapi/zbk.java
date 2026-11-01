package com.google.android.gms.internal.p002authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: loaded from: classes3.dex */
final class zbk extends zbd {
    private final BaseImplementation.ResultHolder zba;

    zbk(BaseImplementation.ResultHolder resultHolder) {
        this.zba = resultHolder;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbd, com.google.android.gms.internal.p002authapi.zbs
    public final void zbc(Status status) {
        this.zba.setResult(status);
    }
}
