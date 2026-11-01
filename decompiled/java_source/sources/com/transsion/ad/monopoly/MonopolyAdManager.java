package com.transsion.ad.monopoly;

import com.transsion.ad.monopoly.manager.AdPlansAssetsManager;
import com.transsion.ad.monopoly.manager.AdPlansRequestManager;
import com.transsion.ad.monopoly.manager.AdSceneAssetsManager;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.attribution.AttributionConsumeManager;
import com.transsion.ad.strategy.c;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class MonopolyAdManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MonopolyAdManager f42123a = new MonopolyAdManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f42124b = new AtomicBoolean(false);

    private MonopolyAdManager() {
    }

    public static /* synthetic */ Object c(MonopolyAdManager monopolyAdManager, String str, Function1 function1, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return monopolyAdManager.b(str, function1, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(Function1 function1, boolean z10) {
        if (z10) {
            c.f42230a.b();
        }
        if (function1 == null) {
            return null;
        }
        function1.invoke(Boolean.valueOf(z10));
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ab A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:43:0x00c0, B:20:0x004c, B:38:0x009e, B:40:0x00ab, B:44:0x00c6, B:46:0x00d3, B:23:0x0058, B:35:0x008f, B:32:0x007e), top: B:51:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00bf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c6 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:43:0x00c0, B:20:0x004c, B:38:0x009e, B:40:0x00ab, B:44:0x00c6, B:46:0x00d3, B:23:0x0058, B:35:0x008f, B:32:0x007e), top: B:51:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:43:0x00c0, B:20:0x004c, B:38:0x009e, B:40:0x00ab, B:44:0x00c6, B:46:0x00d3, B:23:0x0058, B:35:0x008f, B:32:0x007e), top: B:51:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object b(String str, Function1 function1, Continuation continuation) throws Throwable {
        MonopolyAdManager$init$1 monopolyAdManager$init$1;
        String str2;
        AdPlansRequestManager adPlansRequestManager;
        Function1 function2;
        final Function1 function3 = function1;
        if (continuation instanceof MonopolyAdManager$init$1) {
            monopolyAdManager$init$1 = (MonopolyAdManager$init$1) continuation;
            int i11 = monopolyAdManager$init$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                monopolyAdManager$init$1.label = i11 - Integer.MIN_VALUE;
            } else {
                monopolyAdManager$init$1 = new MonopolyAdManager$init$1(this, continuation);
            }
        } else {
            monopolyAdManager$init$1 = new MonopolyAdManager$init$1(this, continuation);
        }
        Object obj = monopolyAdManager$init$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = monopolyAdManager$init$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    function3 = (Function1) monopolyAdManager$init$1.L$1;
                    str2 = (String) monopolyAdManager$init$1.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i12 == 2) {
                        function3 = (Function1) monopolyAdManager$init$1.L$1;
                        str2 = (String) monopolyAdManager$init$1.L$0;
                        ResultKt.b(obj);
                        AttributionConsumeManager.f42177c.n();
                        if (c.f42230a.a()) {
                            adPlansRequestManager = AdPlansRequestManager.f42150a;
                            function2 = new Function1() { // from class: com.transsion.ad.monopoly.a
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    return MonopolyAdManager.d(function3, ((Boolean) obj2).booleanValue());
                                }
                            };
                            monopolyAdManager$init$1.L$0 = null;
                            monopolyAdManager$init$1.L$1 = null;
                            monopolyAdManager$init$1.label = 3;
                            if (adPlansRequestManager.t(str2, function2, monopolyAdManager$init$1) == objF) {
                                return objF;
                            }
                        } else {
                            oi.a.c(oi.a.f71022a, "MonopolyAdManager --> init{} --> 未满足间隔，不请求ad/config接口", 0, false, 6, null);
                            if (function3 != null) {
                                function3.invoke(Boxing.a(false));
                            }
                        }
                        f42124b.set(false);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                PSActivateManager.f42171a.e();
                f42124b.set(false);
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            if (!f42124b.compareAndSet(false, true)) {
                oi.a.c(oi.a.f71022a, "MonopolyAdManager --> init{} --> 正在初始化中，跳过", 0, false, 6, null);
                if (function3 != null) {
                    function3.invoke(Boxing.a(false));
                }
                return Unit.f67061a;
            }
            AdPlansAssetsManager adPlansAssetsManager = AdPlansAssetsManager.f42149b;
            str2 = str;
            monopolyAdManager$init$1.L$0 = str2;
            monopolyAdManager$init$1.L$1 = function3;
            monopolyAdManager$init$1.label = 1;
            if (adPlansAssetsManager.a(monopolyAdManager$init$1) == objF) {
                return objF;
            }
            AdSceneAssetsManager adSceneAssetsManager = AdSceneAssetsManager.f42158b;
            monopolyAdManager$init$1.L$0 = str2;
            monopolyAdManager$init$1.L$1 = function3;
            monopolyAdManager$init$1.label = 2;
            if (adSceneAssetsManager.a(monopolyAdManager$init$1) == objF) {
                return objF;
            }
            AttributionConsumeManager.f42177c.n();
            if (c.f42230a.a()) {
                adPlansRequestManager = AdPlansRequestManager.f42150a;
                function2 = new Function1() { // from class: com.transsion.ad.monopoly.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return MonopolyAdManager.d(function3, ((Boolean) obj2).booleanValue());
                    }
                };
                monopolyAdManager$init$1.L$0 = null;
                monopolyAdManager$init$1.L$1 = null;
                monopolyAdManager$init$1.label = 3;
                if (adPlansRequestManager.t(str2, function2, monopolyAdManager$init$1) == objF) {
                    return objF;
                }
                PSActivateManager.f42171a.e();
            } else {
                oi.a.c(oi.a.f71022a, "MonopolyAdManager --> init{} --> 未满足间隔，不请求ad/config接口", 0, false, 6, null);
                if (function3 != null) {
                    function3.invoke(Boxing.a(false));
                }
            }
            f42124b.set(false);
            return Unit.f67061a;
        } catch (Throwable th2) {
            f42124b.set(false);
            throw th2;
        }
    }
}
