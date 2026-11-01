package com.transsion.transfer.wifi.connect;

import com.transsion.transfer.wifi.util.g;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.connect.WifiConnectionManager$resolveIP$2", f = "WifiConnectionManager.kt", l = {337}, m = "invokeSuspend")
final class WifiConnectionManager$resolveIP$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    WifiConnectionManager$resolveIP$2(Continuation<? super WifiConnectionManager$resolveIP$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiConnectionManager$resolveIP$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WifiConnectionManager$resolveIP$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            WifiConnectionManager wifiConnectionManager = WifiConnectionManager.f55832a;
            this.label = 1;
            obj = wifiConnectionManager.p(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        String str = (String) obj;
        if (StringsKt.c0(str, "192.168", false, 2, null)) {
            g gVar = g.f55970a;
            WifiConnectionManager wifiConnectionManager2 = WifiConnectionManager.f55832a;
            g.d(gVar, wifiConnectionManager2.o() + " --> resolveIP(netId: Int) --> 统级接入方添加Net成功，跳转传输页 ip = " + str, false, 2, null);
            wifiConnectionManager2.e(str);
        } else {
            g gVar2 = g.f55970a;
            WifiConnectionManager wifiConnectionManager3 = WifiConnectionManager.f55832a;
            g.d(gVar2, wifiConnectionManager3.o() + " --> resolveIP(netId: Int) --> result->连接P2P失败 原因 = P2P地址获取异常，重试后仍然异常 ip = " + str, false, 2, null);
            wifiConnectionManager3.b(2002);
        }
        return Unit.f67061a;
    }
}
