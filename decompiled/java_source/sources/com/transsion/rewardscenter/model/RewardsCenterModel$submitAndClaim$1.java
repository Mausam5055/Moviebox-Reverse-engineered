package com.transsion.rewardscenter.model;

import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import com.transsion.rewardscenterapi.ClaimReceiverResponse;
import com.transsion.rewardscenterapi.PhoneInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.RewardsCenterModel$submitAndClaim$1", f = "RewardsCenterModel.kt", l = {185}, m = "invokeSuspend")
final class RewardsCenterModel$submitAndClaim$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $cc;
    final /* synthetic */ String $drawResultId;
    final /* synthetic */ String $iso;
    final /* synthetic */ String $number;
    int label;
    final /* synthetic */ RewardsCenterModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterModel$submitAndClaim$1(RewardsCenterModel rewardsCenterModel, String str, String str2, String str3, String str4, Continuation<? super RewardsCenterModel$submitAndClaim$1> continuation) {
        super(2, continuation);
        this.this$0 = rewardsCenterModel;
        this.$drawResultId = str;
        this.$cc = str2;
        this.$number = str3;
        this.$iso = str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(RewardsCenterModel rewardsCenterModel, String str, String str2) {
        rewardsCenterModel.o().n(Boolean.FALSE);
        rewardsCenterModel.A(null);
        rewardsCenterModel.m().n(new Pair(str, str2));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(RewardsCenterModel rewardsCenterModel, String str, ClaimReceiverResponse claimReceiverResponse) {
        rewardsCenterModel.e(str);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RewardsCenterModel$submitAndClaim$1(this.this$0, this.$drawResultId, this.$cc, this.$number, this.$iso, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterModel$submitAndClaim$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String str = this.$cc;
            String str2 = this.$number;
            String str3 = this.$iso;
            List listC = CollectionsKt.c();
            listC.add(new PhoneInfo(str, str2, str3));
            List listA = CollectionsKt.a(listC);
            this.this$0.o().q(Boxing.a(true));
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
            ClaimReceiverRequest claimReceiverRequest = new ClaimReceiverRequest(this.$drawResultId, null, listA, null, null, null, 58, null);
            final RewardsCenterModel rewardsCenterModel = this.this$0;
            Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.model.j
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RewardsCenterModel$submitAndClaim$1.g(rewardsCenterModel, (String) obj2, (String) obj3);
                }
            };
            final RewardsCenterModel rewardsCenterModel2 = this.this$0;
            final String str4 = this.$drawResultId;
            Function1 function1 = new Function1() { // from class: com.transsion.rewardscenter.model.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return RewardsCenterModel$submitAndClaim$1.h(rewardsCenterModel2, str4, (ClaimReceiverResponse) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.w(claimReceiverRequest, function2, function1, this) == objF) {
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
