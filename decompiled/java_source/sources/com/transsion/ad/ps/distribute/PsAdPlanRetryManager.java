package com.transsion.ad.ps.distribute;

import android.os.SystemClock;
import com.transsion.ad.monopoly.model.AdPlans;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class PsAdPlanRetryManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsAdPlanRetryManager f42187a = new PsAdPlanRetryManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f42188b;

    private PsAdPlanRetryManager() {
    }

    private final String a() {
        String simpleName = PsAdPlanRetryManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b(AdPlans adPlans) {
        if (SystemClock.elapsedRealtime() - f42188b < com.transsion.ad.scene.b.f42202a.f()) {
            return;
        }
        f42188b = SystemClock.elapsedRealtime();
        oi.a.k(oi.a.f71022a, a() + " --> retry() --> PS 直投的虚拟计划 --> 无商单重试 --> 请求PS商单接口", 5, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new PsAdPlanRetryManager$retry$1(adPlans, null), 3, null);
    }
}
