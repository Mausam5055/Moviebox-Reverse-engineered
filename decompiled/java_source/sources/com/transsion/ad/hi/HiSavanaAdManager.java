package com.transsion.ad.hi;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.MBAd;
import ih.b;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class HiSavanaAdManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HiSavanaAdManager f42117a = new HiSavanaAdManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicBoolean f42118b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f42119c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set f42120d = new LinkedHashSet();

    private HiSavanaAdManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String f() {
        String simpleName = HiSavanaAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean h() {
        b bVar = b.f65241a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return ((double) bVar.k(applicationA).totalMem) <= ((double) 1073741824) * ((double) com.transsion.ad.scene.b.f42202a.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(Continuation continuation) throws Throwable {
        HiSavanaAdManager$onInitSuccess$1 hiSavanaAdManager$onInitSuccess$1;
        if (continuation instanceof HiSavanaAdManager$onInitSuccess$1) {
            hiSavanaAdManager$onInitSuccess$1 = (HiSavanaAdManager$onInitSuccess$1) continuation;
            int i11 = hiSavanaAdManager$onInitSuccess$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hiSavanaAdManager$onInitSuccess$1.label = i11 - Integer.MIN_VALUE;
            } else {
                hiSavanaAdManager$onInitSuccess$1 = new HiSavanaAdManager$onInitSuccess$1(this, continuation);
            }
        } else {
            hiSavanaAdManager$onInitSuccess$1 = new HiSavanaAdManager$onInitSuccess$1(this, continuation);
        }
        Object obj = hiSavanaAdManager$onInitSuccess$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = hiSavanaAdManager$onInitSuccess$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            MBAd.a aVarC = MBAd.f41751a.c();
            if (aVarC == null || aVarC.k()) {
                oi.a.c(oi.a.f71022a, f() + " --> initHiAdSdk() --> complete -- 媒体取消延时", 0, false, 6, null);
            } else {
                hiSavanaAdManager$onInitSuccess$1.label = 1;
                if (u0.a(5000L, hiSavanaAdManager$onInitSuccess$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        f42119c.set(true);
        oi.a.c(oi.a.f71022a, f() + " --> initHiAdSdk() --> complete -- isInitialized = " + f42119c.get(), 0, false, 6, null);
        Iterator it = f42120d.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onInitSuccess();
        }
        return Unit.f67061a;
    }

    public final void e(a listener) {
        Intrinsics.h(listener, "listener");
        f42120d.add(listener);
    }

    public final Object g(String str, boolean z10, boolean z11, Continuation continuation) {
        if (h()) {
            oi.a.c(oi.a.f71022a, f() + " --> initHiAdSdk() --> 2g & 开关不打开直接关闭sdk初始化", 6, false, 4, null);
            return Unit.f67061a;
        }
        if (f42118b.compareAndSet(false, true)) {
            Object objG = i.g(y0.b(), new HiSavanaAdManager$initHiAdSdk$2(str, z11, z10, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
        }
        oi.a.c(oi.a.f71022a, f() + " --> initHiAdSdk() --> isInitializing == true", 6, false, 4, null);
        return Unit.f67061a;
    }

    public final boolean i() {
        return f42119c.get();
    }

    public final void k(a listener) {
        Intrinsics.h(listener, "listener");
        Set set = f42120d;
        if (!set.isEmpty() && set.contains(listener)) {
            set.remove(listener);
        }
    }
}
