package com.transsion.commercialization.task.wheel;

import android.content.Context;
import com.blankj.utilcode.util.ToastUtils;
import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.lottery.LotteryDrawResultEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoActivityBean;
import com.transsion.bean.lottery.LotteryUserActivityInfoEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceBean;
import com.transsion.wrapperad.R$string;
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
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.task.wheel.TreasureWheelDialog$lotteryDraw$1", f = "TreasureWheelDialog.kt", l = {166, 168}, m = "invokeSuspend")
final class TreasureWheelDialog$lotteryDraw$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ TreasureWheelDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TreasureWheelDialog$lotteryDraw$1(TreasureWheelDialog treasureWheelDialog, Continuation<? super TreasureWheelDialog$lotteryDraw$1> continuation) {
        super(2, continuation);
        this.this$0 = treasureWheelDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TreasureWheelDialog$lotteryDraw$1 treasureWheelDialog$lotteryDraw$1 = new TreasureWheelDialog$lotteryDraw$1(this.this$0, continuation);
        treasureWheelDialog$lotteryDraw$1.L$0 = obj;
        return treasureWheelDialog$lotteryDraw$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TreasureWheelDialog$lotteryDraw$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00f8 A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:7:0x0019, B:39:0x00e6, B:41:0x00ec, B:43:0x00f0, B:45:0x00f8, B:46:0x00fc, B:47:0x0101, B:14:0x002d, B:27:0x00a3, B:29:0x00af, B:31:0x00b5, B:33:0x00bb, B:35:0x00c1, B:17:0x003b, B:19:0x0064, B:21:0x006a, B:23:0x0070), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0119  */
    /* JADX WARN: Code duplicated, block: B:55:0x011f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        TreasureWheelDialog treasureWheelDialog;
        Context context;
        kk.f fVar;
        LuckyWheelView luckyWheelView;
        TreasureWheelDialog treasureWheelDialog2;
        LotteryUserActivityInfoActivityBean activity;
        TreasureWheelDialog treasureWheelDialog3;
        BaseDto baseDto;
        LotteryDrawResultEntity.LotteryResultBean result;
        LotteryUserActivityInfoPriceBean price;
        kk.f fVar2;
        LuckyWheelView luckyWheelView2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        Unit unit = null;
        unit = null;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    treasureWheelDialog2 = (TreasureWheelDialog) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    baseDto = (BaseDto) this.L$1;
                    treasureWheelDialog3 = (TreasureWheelDialog) this.L$0;
                    ResultKt.b(obj);
                }
                fVar2 = treasureWheelDialog3.bind;
                if (fVar2 != null && (luckyWheelView2 = fVar2.f66857c) != null) {
                    LotteryDrawResultEntity lotteryDrawResultEntity = (LotteryDrawResultEntity) baseDto.getData();
                    luckyWheelView2.endIndicator(lotteryDrawResultEntity != null ? lotteryDrawResultEntity.getResult() : null);
                    unit = Unit.f67061a;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
                treasureWheelDialog = this.this$0;
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                    context = treasureWheelDialog.getContext();
                    if (context != null) {
                        ToastUtils.s(androidx.core.content.b.getString(context, R$string.treasure_something_went_wrong_please_retry), new Object[0]);
                    }
                    fVar = treasureWheelDialog.bind;
                    if (fVar != null && (luckyWheelView = fVar.f66857c) != null) {
                        luckyWheelView.resetIndicator();
                    }
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            TreasureWheelDialog treasureWheelDialog4 = this.this$0;
            Result.Companion companion = Result.INSTANCE;
            ok.c.f71034a.a(treasureWheelDialog4.getClassTag() + " --> lotteryDraw() --> 调用服务端抽奖接口");
            JsonObject jsonObject = new JsonObject();
            LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity = treasureWheelDialog4.lotteryUserActivityInfoBean;
            jsonObject.addProperty("activityId", (lotteryUserActivityInfoEntity == null || (activity = lotteryUserActivityInfoEntity.getActivity()) == null) ? null : activity.getId());
            jsonObject.addProperty("idempotentKey", "idempotentKey");
            RequestBody.Companion companion2 = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
            com.transsion.commercialization.task.treasure.b bVarX0 = treasureWheelDialog4.x0();
            this.L$0 = treasureWheelDialog4;
            this.label = 1;
            Object objC = com.transsion.commercialization.task.treasure.b.a.c(bVarX0, null, requestBodyCreate, this, 1, null);
            if (objC == objF) {
                return objF;
            }
            treasureWheelDialog2 = treasureWheelDialog4;
            obj = objC;
            BaseDto baseDto2 = (BaseDto) obj;
            com.transsion.commercialization.pslink.a aVar = com.transsion.commercialization.pslink.a.f43829a;
            LotteryDrawResultEntity lotteryDrawResultEntity2 = (LotteryDrawResultEntity) baseDto2.getData();
            aVar.b("中奖了 --> lotteryDraw = " + ((lotteryDrawResultEntity2 == null || (result = lotteryDrawResultEntity2.getResult()) == null || (price = result.getPrice()) == null) ? null : price.getId()));
            this.L$0 = treasureWheelDialog2;
            this.L$1 = baseDto2;
            this.label = 2;
            if (u0.a(1000L, this) == objF) {
                return objF;
            }
            treasureWheelDialog3 = treasureWheelDialog2;
            baseDto = baseDto2;
            fVar2 = treasureWheelDialog3.bind;
            if (fVar2 != null) {
                LotteryDrawResultEntity lotteryDrawResultEntity3 = (LotteryDrawResultEntity) baseDto.getData();
                luckyWheelView2.endIndicator(lotteryDrawResultEntity3 != null ? lotteryDrawResultEntity3.getResult() : null);
                unit = Unit.f67061a;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
            treasureWheelDialog = this.this$0;
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                context = treasureWheelDialog.getContext();
                if (context != null) {
                    ToastUtils.s(androidx.core.content.b.getString(context, R$string.treasure_something_went_wrong_please_retry), new Object[0]);
                }
                fVar = treasureWheelDialog.bind;
                if (fVar != null) {
                    luckyWheelView.resetIndicator();
                }
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
