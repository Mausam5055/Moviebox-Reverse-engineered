package com.google.android.gms.internal.measurement;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdh extends Handler {
    public zzdh() {
        Looper.getMainLooper();
    }

    public zzdh(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }
}
