package com.transsion.transfer.wifi.create.adapter;

import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter$closeWifiAndReCreateHot$1", f = "P2PWifiAdapter.kt", l = {Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY_VALUE, Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, Sdk$SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR_VALUE, 327, 328, 330}, m = "invokeSuspend")
final class P2PWifiAdapter$closeWifiAndReCreateHot$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.IntRef $retryCount;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ P2PWifiAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    P2PWifiAdapter$closeWifiAndReCreateHot$1(Ref.IntRef intRef, P2PWifiAdapter p2PWifiAdapter, Continuation<? super P2PWifiAdapter$closeWifiAndReCreateHot$1> continuation) {
        super(2, continuation);
        this.$retryCount = intRef;
        this.this$0 = p2PWifiAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new P2PWifiAdapter$closeWifiAndReCreateHot$1(this.$retryCount, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((P2PWifiAdapter$closeWifiAndReCreateHot$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0099 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:7:0x001b, B:45:0x00f8, B:12:0x0027, B:42:0x00ed, B:15:0x0034, B:38:0x00ab, B:31:0x008b, B:33:0x0099, B:35:0x009d, B:39:0x00ba, B:18:0x0041, B:21:0x004d, B:28:0x0073, B:24:0x0058), top: B:56:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ec A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x0112  */
    /* JADX WARN: Code duplicated, block: B:53:0x011f A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00a8 -> B:38:0x00ab). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        P2PWifiAdapter p2PWifiAdapter;
        P2PWifiAdapter p2PWifiAdapter2;
        Ref.IntRef intRef;
        WifiUtils wifiUtils;
        Object objF = IntrinsicsKt.f();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    Ref.IntRef intRef2 = this.$retryCount;
                    p2PWifiAdapter2 = this.this$0;
                    Result.Companion companion = Result.INSTANCE;
                    WifiUtils.f55960a.m().setWifiEnabled(false);
                    this.L$0 = intRef2;
                    this.L$1 = p2PWifiAdapter2;
                    this.label = 1;
                    if (u0.a(500L, this) == objF) {
                        return objF;
                    }
                    intRef = intRef2;
                    WifiUtils.f55960a.m().setWifiEnabled(true);
                    this.L$0 = intRef;
                    this.L$1 = p2PWifiAdapter2;
                    this.label = 2;
                    if (u0.a(100L, this) == objF) {
                        return objF;
                    }
                    wifiUtils = WifiUtils.f55960a;
                    if (!wifiUtils.m().isWifiEnabled() || intRef.element > 5) {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter2.b() + " --> 关闭wifi，重启wifi后重新创建WIFI热点 -- wifiEnable = " + wifiUtils.m().isWifiEnabled(), false, 2, null);
                        this.L$0 = p2PWifiAdapter2;
                        this.L$1 = null;
                        this.label = 4;
                        if (u0.a(200L, this) == objF) {
                            return objF;
                        }
                        this.L$0 = null;
                        this.label = 5;
                        if (p2PWifiAdapter2.a(this) == objF) {
                            return objF;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                        p2PWifiAdapter = this.this$0;
                        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 6;
                            if (p2PWifiAdapter.a(this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f67061a;
                    }
                    this.L$0 = intRef;
                    this.L$1 = p2PWifiAdapter2;
                    this.label = 3;
                    if (u0.a(200L, this) == objF) {
                        return objF;
                    }
                    WifiUtils.f55960a.m().setWifiEnabled(true);
                    intRef.element++;
                    wifiUtils = WifiUtils.f55960a;
                    if (wifiUtils.m().isWifiEnabled()) {
                    }
                    com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter2.b() + " --> 关闭wifi，重启wifi后重新创建WIFI热点 -- wifiEnable = " + wifiUtils.m().isWifiEnabled(), false, 2, null);
                    this.L$0 = p2PWifiAdapter2;
                    this.L$1 = null;
                    this.label = 4;
                    if (u0.a(200L, this) == objF) {
                        return objF;
                    }
                    this.L$0 = null;
                    this.label = 5;
                    if (p2PWifiAdapter2.a(this) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 1:
                    p2PWifiAdapter2 = (P2PWifiAdapter) this.L$1;
                    intRef = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    WifiUtils.f55960a.m().setWifiEnabled(true);
                    this.L$0 = intRef;
                    this.L$1 = p2PWifiAdapter2;
                    this.label = 2;
                    if (u0.a(100L, this) == objF) {
                        return objF;
                    }
                    wifiUtils = WifiUtils.f55960a;
                    if (wifiUtils.m().isWifiEnabled()) {
                        break;
                    }
                    com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter2.b() + " --> 关闭wifi，重启wifi后重新创建WIFI热点 -- wifiEnable = " + wifiUtils.m().isWifiEnabled(), false, 2, null);
                    this.L$0 = p2PWifiAdapter2;
                    this.L$1 = null;
                    this.label = 4;
                    if (u0.a(200L, this) == objF) {
                        return objF;
                    }
                    this.L$0 = null;
                    this.label = 5;
                    if (p2PWifiAdapter2.a(this) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 2:
                    p2PWifiAdapter2 = (P2PWifiAdapter) this.L$1;
                    intRef = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    wifiUtils = WifiUtils.f55960a;
                    if (wifiUtils.m().isWifiEnabled()) {
                        break;
                    }
                    com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter2.b() + " --> 关闭wifi，重启wifi后重新创建WIFI热点 -- wifiEnable = " + wifiUtils.m().isWifiEnabled(), false, 2, null);
                    this.L$0 = p2PWifiAdapter2;
                    this.L$1 = null;
                    this.label = 4;
                    if (u0.a(200L, this) == objF) {
                        return objF;
                    }
                    this.L$0 = null;
                    this.label = 5;
                    if (p2PWifiAdapter2.a(this) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 3:
                    p2PWifiAdapter2 = (P2PWifiAdapter) this.L$1;
                    intRef = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    WifiUtils.f55960a.m().setWifiEnabled(true);
                    intRef.element++;
                    wifiUtils = WifiUtils.f55960a;
                    if (wifiUtils.m().isWifiEnabled()) {
                        break;
                    }
                    com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter2.b() + " --> 关闭wifi，重启wifi后重新创建WIFI热点 -- wifiEnable = " + wifiUtils.m().isWifiEnabled(), false, 2, null);
                    this.L$0 = p2PWifiAdapter2;
                    this.L$1 = null;
                    this.label = 4;
                    if (u0.a(200L, this) == objF) {
                        return objF;
                    }
                    this.L$0 = null;
                    this.label = 5;
                    if (p2PWifiAdapter2.a(this) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 4:
                    p2PWifiAdapter2 = (P2PWifiAdapter) this.L$0;
                    ResultKt.b(obj);
                    this.L$0 = null;
                    this.label = 5;
                    if (p2PWifiAdapter2.a(this) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 5:
                    ResultKt.b(obj);
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    p2PWifiAdapter = this.this$0;
                    if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 6;
                        if (p2PWifiAdapter.a(this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 6:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
