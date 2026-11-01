package com.transsion.ad.ps.activate;

import android.os.SystemClock;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.t;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import zg.c;

/* JADX INFO: loaded from: classes5.dex */
public final class PSActivateRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PSActivateRequest f42173a = new PSActivateRequest();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42174b = LazyKt.b(new Function0() { // from class: com.transsion.ad.ps.activate.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PSActivateRequest.j();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicBoolean f42175c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f42176d;

    private PSActivateRequest() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String f() {
        String simpleName = PSActivateRequest.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qi.a i() {
        return (qi.a) f42174b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qi.a j() {
        return (qi.a) c.f79414e.a().h(qi.a.class);
    }

    public final Object g(Continuation continuation) {
        Object objH = h(false, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public final Object h(boolean z10, Continuation continuation) {
        MBAd mBAd = MBAd.f41751a;
        MBAd.a aVarC = mBAd.c();
        if (aVarC != null && !aVarC.j()) {
            oi.a aVar = oi.a.f71022a;
            String strF = f();
            MBAd.a aVarC2 = mBAd.c();
            oi.a.m(aVar, strF + " --> getPsActivateList() --> openPsActivateAd = " + (aVarC2 != null ? Boxing.a(aVarC2.j()) : null) + " --> 没有开启PS激活广告，直接返回", 0, false, 6, null);
            return Unit.f67061a;
        }
        if (t.f42248a.a()) {
            oi.a.m(oi.a.f71022a, f() + " --> getPsActivateList() --> 青少年模式不请求激活广告", 0, false, 6, null);
            return Unit.f67061a;
        }
        AtomicBoolean atomicBoolean = f42175c;
        if (atomicBoolean.get()) {
            oi.a.m(oi.a.f71022a, f() + " --> getPsActivateList() --> isRequesting = " + atomicBoolean, 0, false, 6, null);
            return Unit.f67061a;
        }
        atomicBoolean.set(true);
        if (z10 || f42176d <= 0 || SystemClock.elapsedRealtime() - f42176d >= 7200000) {
            f42176d = SystemClock.elapsedRealtime();
            Object objG = i.g(y0.b(), new PSActivateRequest$getPsActivateList$3(null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
        }
        oi.a.m(oi.a.f71022a, f() + " --> getPsActivateList() --> 两次请求小于2H，skipIntervalCheck = " + z10, 0, false, 6, null);
        atomicBoolean.set(false);
        return Unit.f67061a;
    }
}
