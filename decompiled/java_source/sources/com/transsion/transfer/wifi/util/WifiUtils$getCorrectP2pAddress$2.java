package com.transsion.transfer.wifi.util;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.util.WifiUtils$getCorrectP2pAddress$2", f = "WifiUtils.kt", l = {262}, m = "invokeSuspend")
final class WifiUtils$getCorrectP2pAddress$2 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    int I$0;
    int I$1;
    int label;

    WifiUtils$getCorrectP2pAddress$2(Continuation<? super WifiUtils$getCorrectP2pAddress$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiUtils$getCorrectP2pAddress$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((WifiUtils$getCorrectP2pAddress$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007e  */
    /* JADX WARN: Instruction removed from duplicated block: B:12:0x002a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x007e, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0072 -> B:6:0x0013). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i11;
        int i12;
        WifiUtils wifiUtils;
        long jK;
        int i13;
        Object objF = IntrinsicsKt.f();
        int i14 = this.label;
        if (i14 == 0) {
            ResultKt.b(obj);
            i11 = 60;
            i12 = 0;
            if (i12 < i11) {
                g gVar = g.f55970a;
                WifiUtils wifiUtils2 = WifiUtils.f55960a;
                g.b(gVar, wifiUtils2.e() + " --> getCorrectP2pAddress() --> 多次获取当前wifi ip，仍然异常，返回默认的0.0.0.0", false, 2, null);
                return wifiUtils2.t(0L);
            }
            wifiUtils = WifiUtils.f55960a;
            jK = wifiUtils.k();
            g.b(g.f55970a, wifiUtils.e() + " --> getCorrectP2pAddress() --> 第" + i12 + "次p2p连接 -- ip信息 gateway = " + jK, false, 2, null);
            if (jK == 0 || wifiUtils.o(wifiUtils.j())) {
                return wifiUtils.t(wifiUtils.k());
            }
            i13 = i12 + 1;
            this.I$0 = i11;
            this.I$1 = i13;
            this.label = 1;
            if (u0.a(200L, this) == objF) {
                return objF;
            }
        } else {
            if (i14 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i13 = this.I$1;
            i11 = this.I$0;
            ResultKt.b(obj);
        }
        i12 = i13;
        if (i12 < i11) {
            g gVar2 = g.f55970a;
            WifiUtils wifiUtils3 = WifiUtils.f55960a;
            g.b(gVar2, wifiUtils3.e() + " --> getCorrectP2pAddress() --> 多次获取当前wifi ip，仍然异常，返回默认的0.0.0.0", false, 2, null);
            return wifiUtils3.t(0L);
        }
        wifiUtils = WifiUtils.f55960a;
        jK = wifiUtils.k();
        g.b(g.f55970a, wifiUtils.e() + " --> getCorrectP2pAddress() --> 第" + i12 + "次p2p连接 -- ip信息 gateway = " + jK, false, 2, null);
        if (jK == 0) {
        }
        return wifiUtils.t(wifiUtils.k());
    }
}
