package com.transsion.member.dialog;

import com.transsion.member.promotion.PromotionManager;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.SkuPromotionDto;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.dialog.MemberBasicDialog$loadPromotionConcurrently$1", f = "MemberBasicDialog.kt", l = {Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class MemberBasicDialog$loadPromotionConcurrently$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MemberBasicDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberBasicDialog$loadPromotionConcurrently$1(MemberBasicDialog memberBasicDialog, Continuation<? super MemberBasicDialog$loadPromotionConcurrently$1> continuation) {
        super(2, continuation);
        this.this$0 = memberBasicDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MemberBasicDialog$loadPromotionConcurrently$1 memberBasicDialog$loadPromotionConcurrently$1 = new MemberBasicDialog$loadPromotionConcurrently$1(this.this$0, continuation);
        memberBasicDialog$loadPromotionConcurrently$1.L$0 = obj;
        return memberBasicDialog$loadPromotionConcurrently$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberBasicDialog$loadPromotionConcurrently$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        MemberBasicDialog memberBasicDialog;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                MemberBasicDialog memberBasicDialog2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                PromotionManager promotionManagerZ0 = memberBasicDialog2.z0();
                this.L$0 = memberBasicDialog2;
                this.label = 1;
                Object objO = promotionManagerZ0.o(this);
                if (objO == objF) {
                    return objF;
                }
                memberBasicDialog = memberBasicDialog2;
                obj = objO;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                memberBasicDialog = (MemberBasicDialog) this.L$0;
                ResultKt.b(obj);
            }
            memberBasicDialog.pendingSkuPromotionDto = (SkuPromotionDto) obj;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.this$0.promotionReady = true;
        MemberPriceData memberPriceData = this.this$0.pendingGoodsData;
        if (memberPriceData != null) {
            MemberBasicDialog memberBasicDialog3 = this.this$0;
            SkuPromotionDto skuPromotionDto = memberBasicDialog3.pendingSkuPromotionDto;
            memberBasicDialog3.x0(memberPriceData, skuPromotionDto != null ? skuPromotionDto.getItems() : null);
        }
        return Unit.f67061a;
    }
}
