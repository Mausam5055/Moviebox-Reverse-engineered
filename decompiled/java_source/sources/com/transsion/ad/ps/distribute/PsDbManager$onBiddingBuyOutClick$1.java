package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PsDbManager$onBiddingBuyOutClick$1", f = "PsDbManager.kt", l = {128, 142}, m = "invokeSuspend")
final class PsDbManager$onBiddingBuyOutClick$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ PsLinkAdPlan $psLinkAdPlan;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsDbManager$onBiddingBuyOutClick$1(PsLinkAdPlan psLinkAdPlan, Continuation<? super PsDbManager$onBiddingBuyOutClick$1> continuation) {
        super(2, continuation);
        this.$psLinkAdPlan = psLinkAdPlan;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsDbManager$onBiddingBuyOutClick$1(this.$psLinkAdPlan, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PsDbManager$onBiddingBuyOutClick$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
        PsDbManager psDbManager = PsDbManager.f42189a;
        int id2 = this.$psLinkAdPlan.getId();
        this.label = 1;
        obj = psDbManager.g(id2, this);
        if (obj == objF) {
            return objF;
        }
        PsLinkAdPlan psLinkAdPlan = (PsLinkAdPlan) obj;
        if (psLinkAdPlan != null) {
            String strC = p.f76266a.c();
            if (TextUtils.equals(strC, psLinkAdPlan.getShowDate())) {
                psLinkAdPlan.setClickedTimes(psLinkAdPlan.getClickedTimes() + 1);
            } else {
                psLinkAdPlan.setClickedTimes(1);
                psLinkAdPlan.setShowDate(strC);
            }
            oi.a aVar = oi.a.f71022a;
            PsDbManager psDbManager2 = PsDbManager.f42189a;
            oi.a.k(aVar, psDbManager2.e() + " --> onBiddingBuyOutClick() --> id = " + psLinkAdPlan.getId() + " --> clickMax = " + psLinkAdPlan.getClickMax() + " --> clickedTimes = " + psLinkAdPlan.getClickedTimes() + " --> showDate = " + psLinkAdPlan.getShowDate() + " ", 0, false, 6, null);
            this.label = 2;
            if (psDbManager2.j(psLinkAdPlan, this) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }
}
