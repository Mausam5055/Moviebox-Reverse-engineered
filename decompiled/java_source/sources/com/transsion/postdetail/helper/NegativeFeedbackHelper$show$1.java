package com.transsion.postdetail.helper;

import android.content.Context;
import com.google.gson.Gson;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.util.m;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.NegativeFeedbackAction;
import com.transsion.postdetail.bean.NegativeFeedbackConfigBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.helper.NegativeFeedbackHelper$show$1", f = "NegativeFeedbackHelper.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend")
final class NegativeFeedbackHelper$show$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $authorId;
    final /* synthetic */ Context $context;
    final /* synthetic */ n0 $lifecycleScope;
    final /* synthetic */ Function0<Unit> $onSuccess;
    final /* synthetic */ String $pageName;
    final /* synthetic */ String $postId;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NegativeFeedbackHelper$show$1(Context context, String str, String str2, String str3, n0 n0Var, Function0<Unit> function0, Continuation<? super NegativeFeedbackHelper$show$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$pageName = str;
        this.$postId = str2;
        this.$authorId = str3;
        this.$lifecycleScope = n0Var;
        this.$onSuccess = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x004e  */
    public static final Unit d(BaseDto baseDto, String str, String str2, String str3, n0 n0Var, Function0 function0, NegativeFeedbackAction negativeFeedbackAction) {
        if (Intrinsics.c(negativeFeedbackAction.getActionType(), "NEGATIVE_ACTION_TYPE_REPORT")) {
            NegativeFeedbackConfigBean negativeFeedbackConfigBean = (NegativeFeedbackConfigBean) baseDto.getData();
            if ((negativeFeedbackConfigBean != null ? negativeFeedbackConfigBean.getReportConfig() : null) != null) {
                Navigator.x(TheRouter.c("/postdetail/feedback_input").K("extra_report_config_json", str).K("extra_post_id", str2).K("extra_author_id", str3).K("extra_action_type", negativeFeedbackAction.getActionType()).K("extra_submit_toast_text", negativeFeedbackAction.getSubmitToastText()), null, null, 3, null);
            } else {
                NegativeFeedbackHelper.f48849a.l(str2, str3, negativeFeedbackAction.getActionType(), negativeFeedbackAction.getSubmitToastText(), n0Var, function0);
            }
        } else {
            NegativeFeedbackHelper.f48849a.l(str2, str3, negativeFeedbackAction.getActionType(), negativeFeedbackAction.getSubmitToastText(), n0Var, function0);
        }
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NegativeFeedbackHelper$show$1 negativeFeedbackHelper$show$1 = new NegativeFeedbackHelper$show$1(this.$context, this.$pageName, this.$postId, this.$authorId, this.$lifecycleScope, this.$onSuccess, continuation);
        negativeFeedbackHelper$show$1.L$0 = obj;
        return negativeFeedbackHelper$show$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NegativeFeedbackHelper$show$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                xo.b bVarG = NegativeFeedbackHelper.f48849a.g();
                this.label = 1;
                obj = xo.b.a.a(bVarG, null, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i(NegativeFeedbackHelper.f48850b, "getNegativeFeedbackConfig error: " + thM457exceptionOrNullimpl.getMessage(), true);
            m.e(R$string.post_feedback_fail);
            return Unit.f67061a;
        }
        final BaseDto baseDto = (BaseDto) objM454constructorimpl;
        NegativeFeedbackConfigBean negativeFeedbackConfigBean = (NegativeFeedbackConfigBean) baseDto.getData();
        List<NegativeFeedbackAction> actions = negativeFeedbackConfigBean != null ? negativeFeedbackConfigBean.getActions() : null;
        if (actions == null) {
            actions = CollectionsKt.l();
        }
        if (actions.isEmpty()) {
            return Unit.f67061a;
        }
        Gson gson = new Gson();
        NegativeFeedbackConfigBean negativeFeedbackConfigBean2 = (NegativeFeedbackConfigBean) baseDto.getData();
        final String json = gson.toJson(negativeFeedbackConfigBean2 != null ? negativeFeedbackConfigBean2.getReportConfig() : null);
        com.transsion.postdetail.ui.dialog.h hVar = new com.transsion.postdetail.ui.dialog.h(this.$context, actions, this.$pageName);
        final String str = this.$postId;
        final String str2 = this.$authorId;
        final n0 n0Var = this.$lifecycleScope;
        final Function0<Unit> function0 = this.$onSuccess;
        hVar.j(new Function1() { // from class: com.transsion.postdetail.helper.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return NegativeFeedbackHelper$show$1.d(baseDto, json, str, str2, n0Var, function0, (NegativeFeedbackAction) obj2);
            }
        });
        hVar.show();
        return Unit.f67061a;
    }
}
