package com.transsion.usercenter.profile.viewmodel;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import java.util.ArrayList;
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
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.viewmodel.UserProfileVideoViewModel$requestPage$1", f = "UserProfileVideoViewModel.kt", l = {129}, m = "invokeSuspend")
final class UserProfileVideoViewModel$requestPage$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isRefresh;
    final /* synthetic */ boolean $isSelf;
    final /* synthetic */ String $pageToken;
    final /* synthetic */ String $uid;
    int label;
    final /* synthetic */ UserProfileVideoViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserProfileVideoViewModel$requestPage$1(UserProfileVideoViewModel userProfileVideoViewModel, boolean z10, boolean z11, String str, String str2, Continuation<? super UserProfileVideoViewModel$requestPage$1> continuation) {
        super(2, continuation);
        this.this$0 = userProfileVideoViewModel;
        this.$isRefresh = z10;
        this.$isSelf = z11;
        this.$pageToken = str;
        this.$uid = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UserProfileVideoViewModel$requestPage$1(this.this$0, this.$isRefresh, this.$isSelf, this.$pageToken, this.$uid, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UserProfileVideoViewModel$requestPage$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<UGCVideo> arrayList;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                i0 i0VarB = y0.b();
                UserProfileVideoViewModel$requestPage$1$dto$1 userProfileVideoViewModel$requestPage$1$dto$1 = new UserProfileVideoViewModel$requestPage$1$dto$1(this.$isSelf, this.this$0, this.$pageToken, this.$uid, null);
                this.label = 1;
                obj = i.g(i0VarB, userProfileVideoViewModel$requestPage$1$dto$1, this);
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
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                UGCVideoList uGCVideoList = (UGCVideoList) baseDto.getData();
                this.this$0.f57306k.q(uGCVideoList);
                if (uGCVideoList == null || (arrayList = uGCVideoList.getItems()) == null) {
                    arrayList = new ArrayList<>();
                }
                if (this.$isRefresh) {
                    this.this$0.f57302g.clear();
                }
                if (!arrayList.isEmpty()) {
                    this.this$0.f57302g.addAll(arrayList);
                }
                Pager pager = uGCVideoList != null ? uGCVideoList.getPager() : null;
                this.this$0.f57301f = pager != null ? Intrinsics.c(pager.getHasMore(), Boxing.a(true)) : false;
                this.this$0.f57299d = pager != null ? pager.getNextPage() : null;
                this.this$0.f57308m.q(null);
                lg.a.f68839a.c("UserProfileVideoVM", "requestPage success size=" + Boxing.d(arrayList.size()) + " hasMore=" + this.this$0.f57301f, false);
            } else {
                this.this$0.f57308m.q(baseDto.getCode());
                this.this$0.f57306k.q(null);
                lg.a.f68839a.i("UserProfileVideoVM", "requestPage failure code=" + baseDto.getCode(), false);
            }
        } catch (Exception e11) {
            this.this$0.f57308m.q(TmcConstants.COLD_OPEN_TYPE);
            this.this$0.f57306k.q(null);
            lg.a.f68839a.i("UserProfileVideoVM", "requestPage exception: " + e11.getMessage(), false);
        } finally {
            this.this$0.f57303h.q(Boxing.a(false));
            this.this$0.f57305j = false;
        }
        return Unit.f67061a;
    }
}
