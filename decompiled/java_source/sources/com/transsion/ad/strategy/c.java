package com.transsion.ad.strategy;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f42230a = new c();

    private c() {
    }

    public final boolean a() {
        int iA = com.transsion.ad.scene.b.f42202a.a();
        if (iA <= 0) {
            return true;
        }
        long j11 = f.f42232a.c().getLong("ad_config_last_request_time", -1L);
        return j11 <= 0 || SystemClock.elapsedRealtime() - j11 >= ((long) iA) * 1000;
    }

    public final void b() {
        f.f42232a.c().putLong("ad_config_last_request_time", SystemClock.elapsedRealtime());
    }
}
