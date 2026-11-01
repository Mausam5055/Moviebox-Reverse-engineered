package com.apm.insight.b;

import android.os.SystemClock;
import com.apm.insight.runtime.m;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f19354b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f19355a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f19356c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f19357d;

    c(b bVar) {
        Runnable runnable = new Runnable() { // from class: com.apm.insight.b.c.1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (c.this.f19356c) {
                    return;
                }
                c.this.f19355a.d();
                long unused = c.f19354b = SystemClock.uptimeMillis();
                if (com.apm.insight.runtime.i.a().b()) {
                    m.a().a(c.this.f19357d, 500L);
                } else {
                    m.a().a(c.this.f19357d, 500L);
                }
                com.apm.insight.runtime.b.a(c.f19354b);
            }
        };
        this.f19357d = runnable;
        this.f19355a = bVar;
        m.a().a(runnable, 5000L);
    }

    public static boolean c() {
        return SystemClock.uptimeMillis() - f19354b <= MBInterstitialActivity.WEB_LOAD_TIME;
    }

    public final void a() {
        if (this.f19356c) {
            return;
        }
        m.a().a(this.f19357d, 5000L);
    }

    public final void b() {
        this.f19356c = true;
    }
}
