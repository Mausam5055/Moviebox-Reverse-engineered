package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes4.dex */
final class zzhe extends ContentObserver {
    zzhe(zzhc zzhcVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        zzhj.zzc();
    }
}
