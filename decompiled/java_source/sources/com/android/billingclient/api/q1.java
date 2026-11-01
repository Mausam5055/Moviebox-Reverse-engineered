package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes2.dex */
final class q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f19151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p1 f19152b;

    /* JADX WARN: Multi-variable type inference failed */
    q1(Context context, t0 t0Var, n0 n0Var) {
        this.f19151a = context;
        this.f19152b = new p1(this, null, n0Var, 0 == true ? 1 : 0);
    }

    q1(Context context, v vVar, c cVar, n0 n0Var) {
        this.f19151a = context;
        this.f19152b = new p1(this, vVar, cVar, n0Var, null);
    }

    final t0 c() {
        p1.a(this.f19152b);
        return null;
    }

    final v d() {
        return this.f19152b.f19143a;
    }

    final void e(boolean z10) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        this.f19151a.getApplicationContext().getPackageName();
        intentFilter.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f19152b.c(this.f19151a, intentFilter, null, null);
    }
}
