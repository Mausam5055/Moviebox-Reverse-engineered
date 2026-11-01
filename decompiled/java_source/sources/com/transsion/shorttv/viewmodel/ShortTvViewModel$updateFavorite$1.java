package com.transsion.shorttv.viewmodel;

import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.db.ShortTvFavoriteDao;
import com.transsion.shorttv.db.ShortTvFavoriteStateBean;
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
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$updateFavorite$1", f = "ShortTvViewModel.kt", l = {727}, m = "invokeSuspend")
final class ShortTvViewModel$updateFavorite$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ ShortTVFavInfo $shortTVFavInfo;
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$updateFavorite$1(ShortTvViewModel shortTvViewModel, ShortTVFavInfo shortTVFavInfo, String str, Continuation<? super ShortTvViewModel$updateFavorite$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$shortTVFavInfo = shortTVFavInfo;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$updateFavorite$1(this.this$0, this.$shortTVFavInfo, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$updateFavorite$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ShortTvFavoriteStateBean shortTvFavoriteStateBean = new ShortTvFavoriteStateBean(null, null, false, null, 15, null);
            ShortTVFavInfo shortTVFavInfo = this.$shortTVFavInfo;
            String str = this.$subjectId;
            shortTvFavoriteStateBean.setFavoriteNum(shortTVFavInfo.getFavoriteNum());
            shortTvFavoriteStateBean.setHasFavorite(shortTVFavInfo.getHasFavorite());
            shortTvFavoriteStateBean.setFavoriteTime(shortTVFavInfo.getFavoriteTime());
            shortTvFavoriteStateBean.setSubjectId(str);
            ShortTvFavoriteDao shortTvFavoriteDaoB0 = this.this$0.b0();
            if (shortTvFavoriteDaoB0 != null) {
                this.label = 1;
                if (shortTvFavoriteDaoB0.d(shortTvFavoriteStateBean, this) == objF) {
                    return objF;
                }
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
