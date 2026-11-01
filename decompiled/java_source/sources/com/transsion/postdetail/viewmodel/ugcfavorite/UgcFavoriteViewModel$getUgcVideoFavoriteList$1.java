package com.transsion.postdetail.viewmodel.ugcfavorite;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.bean.favorite.FeedFavorData;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import jq.a;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.ugcfavorite.UgcFavoriteViewModel$getUgcVideoFavoriteList$1", f = "UgcFavoriteViewModel.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, m = "invokeSuspend")
final class UgcFavoriteViewModel$getUgcVideoFavoriteList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $page;
    final /* synthetic */ String $userId;
    int label;
    final /* synthetic */ UgcFavoriteViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UgcFavoriteViewModel$getUgcVideoFavoriteList$1(UgcFavoriteViewModel ugcFavoriteViewModel, String str, String str2, Continuation<? super UgcFavoriteViewModel$getUgcVideoFavoriteList$1> continuation) {
        super(2, continuation);
        this.this$0 = ugcFavoriteViewModel;
        this.$page = str;
        this.$userId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UgcFavoriteViewModel$getUgcVideoFavoriteList$1(this.this$0, this.$page, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UgcFavoriteViewModel$getUgcVideoFavoriteList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<UGCVideo> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                a aVar = this.this$0.f50268d;
                String strA = vg.a.f77324a.a();
                String str = this.$page;
                int i12 = UgcFavoriteViewModel.f50265i;
                String str2 = this.$userId;
                this.label = 1;
                obj = aVar.a(strA, str, i12, str2, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "subscription", "favorite data " + baseDto, false, 4, null);
            FeedFavorData feedFavorData = (FeedFavorData) baseDto.getData();
            lg.a.C0828a.f(c0828a, "subscription", "favorite data size " + ((feedFavorData == null || (items = feedFavorData.getItems()) == null) ? null : Boxing.d(items.size())), false, 4, null);
            this.this$0.e().n(baseDto.getData());
        } catch (Exception e11) {
            e11.printStackTrace();
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String simpleName = UgcFavoriteViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0828a2.i(simpleName, "exceptionHandler " + e11.getMessage(), true);
        }
        return Unit.f67061a;
    }
}
