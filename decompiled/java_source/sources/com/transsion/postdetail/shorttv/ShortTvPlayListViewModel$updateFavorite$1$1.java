package com.transsion.postdetail.shorttv;

import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.IShortTvFavoriteStateDao;
import com.transsion.baselib.db.video.ShortTvFavoriteState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.shorttv.ShortTvPlayListViewModel$updateFavorite$1$1", f = "ShortTvPlayListViewModel.kt", l = {201}, m = "invokeSuspend")
final class ShortTvPlayListViewModel$updateFavorite$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ ShortTvFavoriteState $shortTvFavoriteState;
    int label;
    final /* synthetic */ ShortTvPlayListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvPlayListViewModel$updateFavorite$1$1(ShortTvPlayListViewModel shortTvPlayListViewModel, ShortTvFavoriteState shortTvFavoriteState, Continuation<? super ShortTvPlayListViewModel$updateFavorite$1$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvPlayListViewModel;
        this.$shortTvFavoriteState = shortTvFavoriteState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvPlayListViewModel$updateFavorite$1$1(this.this$0, this.$shortTvFavoriteState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvPlayListViewModel$updateFavorite$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            IShortTvFavoriteStateDao iShortTvFavoriteStateDaoY1 = AppDatabase.INSTANCE.b(this.this$0.b()).y1();
            ShortTvFavoriteState shortTvFavoriteState = this.$shortTvFavoriteState;
            this.label = 1;
            if (iShortTvFavoriteStateDaoY1.d(shortTvFavoriteState, this) == objF) {
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
