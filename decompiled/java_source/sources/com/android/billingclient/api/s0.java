package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziv;

/* JADX INFO: loaded from: classes2.dex */
final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f19191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private r8.h f19192b;

    s0(Context context) {
        try {
            com.google.android.datatransport.runtime.t.f(context);
            this.f19192b = com.google.android.datatransport.runtime.t.c().g(com.google.android.datatransport.cct.a.f24183g).b("PLAY_BILLING_LIBRARY", zziv.class, r8.c.b("proto"), new r8.g() { // from class: com.android.billingclient.api.r0
                @Override // r8.g
                public final Object apply(Object obj) {
                    return ((zziv) obj).zzc();
                }
            });
        } catch (Throwable unused) {
            this.f19191a = true;
        }
    }

    public final void a(zziv zzivVar) {
        if (this.f19191a) {
            zzb.zzk("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f19192b.b(r8.d.f(zzivVar));
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "logging failed.");
        }
    }
}
