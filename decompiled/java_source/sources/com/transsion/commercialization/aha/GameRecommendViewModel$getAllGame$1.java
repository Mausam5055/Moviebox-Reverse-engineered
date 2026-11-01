package com.transsion.commercialization.aha;

import com.transsion.bean.AhaGameResponse;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.aha.GameRecommendViewModel$getAllGame$1", f = "GameRecommendViewModel.kt", l = {37}, m = "invokeSuspend")
final class GameRecommendViewModel$getAllGame$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ GameRecommendViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GameRecommendViewModel$getAllGame$1(GameRecommendViewModel gameRecommendViewModel, Continuation<? super GameRecommendViewModel$getAllGame$1> continuation) {
        super(2, continuation);
        this.this$0 = gameRecommendViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GameRecommendViewModel$getAllGame$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GameRecommendViewModel$getAllGame$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        GameRecommendViewModel gameRecommendViewModel;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                GameRecommendViewModel gameRecommendViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                g gVarK = gameRecommendViewModel2.k();
                Map mapA = g.INSTANCE.a();
                RequestBody requestBodyA = bh.b.f16471a.a(new AhaGameRequest(new AhaGameQuery(gameRecommendViewModel2.f43749c, 10)));
                this.L$0 = gameRecommendViewModel2;
                this.label = 1;
                Object objA = gVarK.a(mapA, requestBodyA, this);
                if (objA == objF) {
                    return objF;
                }
                gameRecommendViewModel = gameRecommendViewModel2;
                obj = objA;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                gameRecommendViewModel = (GameRecommendViewModel) this.L$0;
                ResultKt.b(obj);
            }
            AhaGameResponse ahaGameResponse = (AhaGameResponse) obj;
            Integer code = ahaGameResponse.getCode();
            if (code != null && code.intValue() == 1000) {
                gameRecommendViewModel.f43749c++;
            }
            gameRecommendViewModel.f43747a.n(ahaGameResponse);
            lg.a.f68839a.c(gameRecommendViewModel.j(), gameRecommendViewModel.j() + " --> getAllGame() --> postAhaGameRecommendList = " + ahaGameResponse, true);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        GameRecommendViewModel gameRecommendViewModel3 = this.this$0;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.c(gameRecommendViewModel3.j(), gameRecommendViewModel3.j() + " --> getAllGame() --> 加载失败了 it = " + thM457exceptionOrNullimpl, true);
            gameRecommendViewModel3.f43747a.n(null);
        }
        return Unit.f67061a;
    }
}
