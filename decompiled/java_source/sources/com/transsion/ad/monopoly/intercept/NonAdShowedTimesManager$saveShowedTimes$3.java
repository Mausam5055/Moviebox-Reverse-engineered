package com.transsion.ad.monopoly.intercept;

import android.app.Application;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.NonAdShowedTimesManager$saveShowedTimes$3", f = "NonAdShowedTimesManager.kt", l = {112, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
final class NonAdShowedTimesManager$saveShowedTimes$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AdPlans $mAdPlans;
    final /* synthetic */ MbAdDbPlans $nonAdPlans;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NonAdShowedTimesManager$saveShowedTimes$3(MbAdDbPlans mbAdDbPlans, AdPlans adPlans, Continuation<? super NonAdShowedTimesManager$saveShowedTimes$3> continuation) {
        super(2, continuation);
        this.$nonAdPlans = mbAdDbPlans;
        this.$mAdPlans = adPlans;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NonAdShowedTimesManager$saveShowedTimes$3(this.$nonAdPlans, this.$mAdPlans, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NonAdShowedTimesManager$saveShowedTimes$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2 && i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        MbAdDbPlans mbAdDbPlans = this.$nonAdPlans;
        ShowedTimesMemoryBean showedTimesMemoryBean = (ShowedTimesMemoryBean) NonAdShowedTimesManager.f42135b.get(this.$nonAdPlans.getId());
        mbAdDbPlans.setShowedTimes(Boxing.d(showedTimesMemoryBean != null ? showedTimesMemoryBean.getShowedTimes() : 0));
        this.$nonAdPlans.setShowDate(p.f76266a.c());
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        li.b bVarZ0 = companion.b(applicationA).z0();
        String id2 = this.$mAdPlans.getId();
        this.label = 1;
        obj = bVarZ0.h(id2, this);
        if (obj == objF) {
            return objF;
        }
        MbAdDbPlans mbAdDbPlans2 = (MbAdDbPlans) obj;
        if (TextUtils.equals(mbAdDbPlans2 != null ? mbAdDbPlans2.getAdPlanUpdateTime() : null, this.$nonAdPlans.getAdPlanUpdateTime())) {
            MbAdDatabase.Companion companion2 = MbAdDatabase.INSTANCE;
            Application applicationA2 = Utils.a();
            Intrinsics.g(applicationA2, "getApp(...)");
            li.b bVarZ1 = companion2.b(applicationA2).z0();
            MbAdDbPlans mbAdDbPlans3 = this.$nonAdPlans;
            this.label = 2;
            if (bVarZ1.i(mbAdDbPlans3, this) == objF) {
                return objF;
            }
        } else {
            if (mbAdDbPlans2 != null) {
                mbAdDbPlans2.setShowedTimes(this.$nonAdPlans.getShowedTimes());
            }
            if (mbAdDbPlans2 != null) {
                mbAdDbPlans2.setShowDate(this.$nonAdPlans.getShowDate());
            }
            if (mbAdDbPlans2 != null) {
                MbAdDatabase.Companion companion3 = MbAdDatabase.INSTANCE;
                Application applicationA3 = Utils.a();
                Intrinsics.g(applicationA3, "getApp(...)");
                li.b bVarZ2 = companion3.b(applicationA3).z0();
                this.label = 3;
                if (bVarZ2.i(mbAdDbPlans2, this) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f67061a;
    }
}
