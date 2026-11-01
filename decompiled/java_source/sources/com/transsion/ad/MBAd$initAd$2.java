package com.transsion.ad;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.ad.scene.b;
import com.transsion.ad.strategy.AdObserveNetworkState;
import com.transsion.ad.strategy.AppManager;
import com.transsion.ad.strategy.NationalInformationManager;
import com.transsion.ad.strategy.s;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import hi.d;
import hi.e;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;
import ti.h;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.MBAd$initAd$2", f = "MBAd.kt", l = {173, 185, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class MBAd$initAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ MBAd.a $params;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MBAd$initAd$2(MBAd.a aVar, Continuation<? super MBAd$initAd$2> continuation) {
        super(2, continuation);
        this.$params = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MBAd$initAd$2 mBAd$initAd$2 = new MBAd$initAd$2(this.$params, continuation);
        mBAd$initAd$2.L$0 = obj;
        return mBAd$initAd$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MBAd$initAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x01b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:41:0x01ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:49:0x0211  */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x0211, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        n0 n0Var;
        MBAd.a aVar;
        r0 r0VarB;
        oi.a aVar2;
        String strD;
        Object objI;
        r0 r0Var;
        Object objI2;
        Object obj2;
        String str = " ================= ";
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    aVar = (MBAd.a) this.L$1;
                    n0 n0Var2 = (n0) this.L$0;
                    ResultKt.b(obj);
                    n0Var = n0Var2;
                } else if (i11 == 2) {
                    aVar = (MBAd.a) this.L$1;
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                    str = " ================= ";
                    n0 n0Var3 = n0Var;
                    AdObserveNetworkState.f42206a.f(aVar.b());
                    r0VarB = k.b(n0Var3, null, null, new MBAd$initAd$2$1$sdkHi$1(aVar, null), 3, null);
                    r0 r0VarB2 = k.b(n0Var3, null, null, new MBAd$initAd$2$1$sdkMb$1(aVar, null), 3, null);
                    aVar2 = oi.a.f71022a;
                    strD = MBAd.f41751a.d();
                    this.L$0 = r0VarB;
                    this.L$1 = strD;
                    this.L$2 = aVar2;
                    this.label = 3;
                    objI = r0VarB2.i(this);
                    if (objI == objF) {
                        return objF;
                    }
                    r0Var = r0VarB;
                    this.L$0 = strD;
                    this.L$1 = aVar2;
                    this.L$2 = objI;
                    this.label = 4;
                    objI2 = r0Var.i(this);
                    if (objI2 == objF) {
                        return objF;
                    }
                    obj2 = objI;
                } else if (i11 == 3) {
                    aVar2 = (oi.a) this.L$2;
                    String str2 = (String) this.L$1;
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                    str = " ================= ";
                    strD = str2;
                    objI = obj;
                    this.L$0 = strD;
                    this.L$1 = aVar2;
                    this.L$2 = objI;
                    this.label = 4;
                    objI2 = r0Var.i(this);
                    if (objI2 == objF) {
                        return objF;
                    }
                    obj2 = objI;
                } else {
                    if (i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj2 = this.L$2;
                    aVar2 = (oi.a) this.L$1;
                    strD = (String) this.L$0;
                    ResultKt.b(obj);
                    objI2 = obj;
                    str = " ================= ";
                }
                oi.a aVar3 = aVar2;
                StringBuilder sb2 = new StringBuilder();
                String str3 = str;
                sb2.append(str3);
                sb2.append(strD);
                sb2.append(" --> initAd() --> ");
                sb2.append(obj2);
                sb2.append(" -- ");
                sb2.append(objI2);
                sb2.append(str3);
                oi.a.c(aVar3, sb2.toString(), 6, false, 4, null);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    thM457exceptionOrNullimpl.printStackTrace();
                    MBAd.f41752b.set(null);
                    oi.a.c(oi.a.f71022a, MBAd.f41751a.d() + " --> initAd() --> 初始化异常，已重置状态，可重试 --> it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            n0 n0Var4 = (n0) this.L$0;
            MBAd.a aVar4 = this.$params;
            Result.Companion companion = Result.INSTANCE;
            oi.a aVar5 = oi.a.f71022a;
            String strD2 = MBAd.f41751a.d();
            String strE = c.e();
            int iF = c.f();
            String strH = c.h();
            boolean zA = e.f64471a.a();
            boolean zC = s.f42244a.c();
            String strL = CacheIpPool.f40825a.l();
            b bVar = b.f42202a;
            boolean zL = bVar.l();
            boolean zI = bVar.i();
            NationalInformationManager nationalInformationManager = NationalInformationManager.f42224a;
            oi.a.c(aVar5, strD2 + " --> initAd() --> monopoly广告SDK 开始初始化 \n--> SDK_VERSION = 4.3.3_2 \n--> 当前包名 = " + strE + " \n--> 当前宿主版本号 = " + iF + " \n--> 当前宿主版本名 = " + strH + " \n--> 当前是否是会员 = " + zA + " \n --> 当前是否是新用户 = " + zC + "\n--> host = " + strL + "\n--> isOpenAd = " + zL + "\n--> adLinkOff = " + zI + "\n--> currentMcc = " + nationalInformationManager.e() + "\n --> AdInitParams = " + aVar4.m(), 0, false, 6, null);
            AppManager.f42217a.b(aVar4.d());
            d.f64469a.c(aVar4.g());
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            this.L$0 = n0Var4;
            this.L$1 = aVar4;
            this.label = 1;
            objF = objF;
            if (nationalInformationManager.h(applicationA, this) == objF) {
                return objF;
            }
            n0Var = n0Var4;
            aVar = aVar4;
            h hVar = h.f76259a;
            a aVar6 = a.f41780a;
            hVar.b(aVar6.b());
            hVar.b(aVar6.a());
            if (!aVar.h()) {
                a2 a2VarC = y0.c();
                MBAd$initAd$2$1$1 mBAd$initAd$2$1$1 = new MBAd$initAd$2$1$1(null);
                this.L$0 = n0Var;
                this.L$1 = aVar;
                this.label = 2;
                if (i.g(a2VarC, mBAd$initAd$2$1$1, this) == objF) {
                    return objF;
                }
            }
            n0 n0Var5 = n0Var;
            AdObserveNetworkState.f42206a.f(aVar.b());
            r0VarB = k.b(n0Var5, null, null, new MBAd$initAd$2$1$sdkHi$1(aVar, null), 3, null);
            r0 r0VarB3 = k.b(n0Var5, null, null, new MBAd$initAd$2$1$sdkMb$1(aVar, null), 3, null);
            aVar2 = oi.a.f71022a;
            strD = MBAd.f41751a.d();
            this.L$0 = r0VarB;
            this.L$1 = strD;
            this.L$2 = aVar2;
            this.label = 3;
            objI = r0VarB3.i(this);
            if (objI == objF) {
                return objF;
            }
            r0Var = r0VarB;
            this.L$0 = strD;
            this.L$1 = aVar2;
            this.L$2 = objI;
            this.label = 4;
            objI2 = r0Var.i(this);
            if (objI2 == objF) {
                return objF;
            }
            obj2 = objI;
            oi.a aVar7 = aVar2;
            StringBuilder sb3 = new StringBuilder();
            String str4 = str;
            sb3.append(str4);
            sb3.append(strD);
            sb3.append(" --> initAd() --> ");
            sb3.append(obj2);
            sb3.append(" -- ");
            sb3.append(objI2);
            sb3.append(str4);
            oi.a.c(aVar7, sb3.toString(), 6, false, 4, null);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                thM457exceptionOrNullimpl.printStackTrace();
                MBAd.f41752b.set(null);
                oi.a.c(oi.a.f71022a, MBAd.f41751a.d() + " --> initAd() --> 初始化异常，已重置状态，可重试 --> it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
