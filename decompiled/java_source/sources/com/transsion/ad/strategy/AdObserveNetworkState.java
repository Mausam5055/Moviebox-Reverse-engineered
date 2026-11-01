package com.transsion.ad.strategy;

import android.net.Network;
import android.net.NetworkCapabilities;
import com.transsion.ad.monopoly.MonopolyAdManager;
import com.transsion.ad.ps.activate.PSActivateRequest;
import com.transsion.ad.ps.attribution.AttributionConsumeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class AdObserveNetworkState implements nh.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdObserveNetworkState f42206a = new AdObserveNetworkState();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f42207b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f42208c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f42209d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f42210e;

    /* JADX INFO: renamed from: com.transsion.ad.strategy.AdObserveNetworkState$onConnected$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.strategy.AdObserveNetworkState$onConnected$1", f = "AdObserveNetworkState.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                PSActivateRequest pSActivateRequest = PSActivateRequest.f42173a;
                this.label = 1;
                if (pSActivateRequest.g(this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.strategy.AdObserveNetworkState$onConnected$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.strategy.AdObserveNetworkState$onConnected$2", f = "AdObserveNetworkState.kt", l = {71, 73}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(boolean z10) {
            AdObserveNetworkState.f42210e = z10;
            oi.a.g(oi.a.f71022a, null, AdObserveNetworkState.f42206a.e() + " --> onConnected() --> 广告请求结果--> result == " + z10, 0, false, 13, null);
            AdObserveNetworkState.f42208c.set(false);
            return Unit.f67061a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(500L, this) == objF) {
                return objF;
            }
            oi.a.g(oi.a.f71022a, null, AdObserveNetworkState.f42206a.e() + " --> onConnected() --> 网络变化，请求广告配置", 0, false, 13, null);
            MonopolyAdManager monopolyAdManager = MonopolyAdManager.f42123a;
            String str = AdObserveNetworkState.f42207b;
            if (str == null) {
                str = "";
            }
            Function1 function1 = new Function1() { // from class: com.transsion.ad.strategy.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return AdObserveNetworkState.AnonymousClass2.d(((Boolean) obj2).booleanValue());
                }
            };
            this.label = 2;
            if (monopolyAdManager.b(str, function1, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    private AdObserveNetworkState() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        String simpleName = AdObserveNetworkState.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void f(String adConfigUrl) {
        Intrinsics.h(adConfigUrl, "adConfigUrl");
        f42207b = adConfigUrl;
        if (!f42209d.compareAndSet(false, true)) {
            oi.a.c(oi.a.f71022a, e() + " --> registerNetworkStatusChangedListener() --> 网络变化监听已注册，跳过", 0, false, 6, null);
            return;
        }
        oi.a.c(oi.a.f71022a, e() + " --> registerNetworkStatusChangedListener() --> 网络变化监听 success", 0, false, 6, null);
        nh.m.f70474a.l(this);
    }

    @Override // nh.n
    public void onConnected() {
        nh.n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        AttributionConsumeManager.f42177c.n();
        if (!f42208c.compareAndSet(false, true)) {
            oi.a.g(oi.a.f71022a, null, e() + " --> onConnected() --> isLoading == true", 5, false, 9, null);
            return;
        }
        if (!f42210e) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass2(null), 3, null);
            return;
        }
        oi.a.g(oi.a.f71022a, null, e() + " --> onConnected() --> result == true --> 生命周期内已经请求成功", 5, false, 9, null);
    }

    @Override // nh.n
    public void onDisconnected() {
    }
}
