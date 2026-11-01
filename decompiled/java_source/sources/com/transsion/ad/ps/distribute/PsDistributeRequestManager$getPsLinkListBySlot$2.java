package com.transsion.ad.ps.distribute;

import com.transsion.ad.ps.PSReportUtil;
import com.transsion.ad.ps.model.PsLinkDto;
import com.transsion.ad.ps.model.RecommendInfo;
import hi.f;
import java.util.List;
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
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PsDistributeRequestManager$getPsLinkListBySlot$2", f = "PsDistributeRequestManager.kt", l = {92, 106}, m = "invokeSuspend")
final class PsDistributeRequestManager$getPsLinkListBySlot$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $nonId;
    final /* synthetic */ int $pageIndex;
    final /* synthetic */ int $pageSize;
    final /* synthetic */ Integer $psScene;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsDistributeRequestManager$getPsLinkListBySlot$2(int i11, int i12, Integer num, String str, Continuation<? super PsDistributeRequestManager$getPsLinkListBySlot$2> continuation) {
        super(2, continuation);
        this.$pageIndex = i11;
        this.$pageSize = i12;
        this.$psScene = num;
        this.$nonId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsDistributeRequestManager$getPsLinkListBySlot$2(this.$pageIndex, this.$pageSize, this.$psScene, this.$nonId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PsDistributeRequestManager$getPsLinkListBySlot$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<RecommendInfo> data;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
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
            PsDistributeRequestManager psDistributeRequestManager = PsDistributeRequestManager.f42191a;
            JSONObject jSONObjectL = psDistributeRequestManager.l(this.$pageIndex, this.$pageSize, this.$psScene);
            f fVar = f.f64472a;
            String str = fVar.e() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.b()) {
                oi.a.k(oi.a.f71022a, psDistributeRequestManager.k() + " --> getPsLinkListBySlot() --> psScene = " + this.$psScene + " --> url = " + str + " --> jsonObject = " + jSONObjectL, 0, false, 6, null);
            }
            qi.a aVarO = psDistributeRequestManager.o();
            bh.b.a aVar = bh.b.f16471a;
            String string = jSONObjectL.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar.a(string);
            this.label = 1;
            obj = aVarO.b(requestBodyA, str, this);
            if (obj == objF) {
                return objF;
            }
            PsLinkDto psLinkDto = (PsLinkDto) obj;
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_SUCCESS, (psLinkDto == null || (data = psLinkDto.getData()) == null) ? null : Boxing.d(data.size()), "", String.valueOf(this.$psScene), PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_AD_PLAN.getValue());
            PsDistributeRequestManager psDistributeRequestManager2 = PsDistributeRequestManager.f42191a;
            String strValueOf = String.valueOf(this.$psScene);
            String str2 = this.$nonId;
            this.label = 2;
            if (psDistributeRequestManager2.h(strValueOf, str2, psLinkDto, this) == objF) {
                return objF;
            }
        } catch (Exception e11) {
            oi.a.k(oi.a.f71022a, PsDistributeRequestManager.f42191a.k() + " --> getPsLinkList() --> psScene = " + this.$psScene + " --> it = " + e11, 6, false, 4, null);
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_FAIL, null, String.valueOf(e11.getMessage()), PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_AD_PLAN.getValue(), String.valueOf(this.$psScene));
        } finally {
            PsDistributeRequestManager.f42193c.remove(this.$psScene);
        }
        return Unit.f67061a;
    }
}
