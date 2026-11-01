package com.transsion.postdetail.viewmodel;

import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$loadStaggeredPostPageCache$1", f = "RoomPostViewModel.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomPostViewModel$loadStaggeredPostPageCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $tabId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RoomPostViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$loadStaggeredPostPageCache$1(String str, RoomPostViewModel roomPostViewModel, Continuation<? super RoomPostViewModel$loadStaggeredPostPageCache$1> continuation) {
        super(2, continuation);
        this.$tabId = str;
        this.this$0 = roomPostViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomPostViewModel$loadStaggeredPostPageCache$1 roomPostViewModel$loadStaggeredPostPageCache$1 = new RoomPostViewModel$loadStaggeredPostPageCache$1(this.$tabId, this.this$0, continuation);
        roomPostViewModel$loadStaggeredPostPageCache$1.L$0 = obj;
        return roomPostViewModel$loadStaggeredPostPageCache$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomPostViewModel$loadStaggeredPostPageCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        PostSubjectItem postSubjectItem;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.$tabId;
        RoomPostViewModel roomPostViewModel = this.this$0;
        try {
            Result.Companion companion = Result.INSTANCE;
            String content = null;
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("post_staggered_page_cache_" + str, null);
            if (string != null && string.length() != 0) {
                PostSubjectBean postSubjectBean = (PostSubjectBean) com.blankj.utilcode.util.o.d(string, PostSubjectBean.class);
                lg.a.C0828a c0828a = lg.a.f68839a;
                List<PostSubjectItem> items = postSubjectBean.getItems();
                if (items != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null) {
                    String title = postSubjectItem.getTitle();
                    content = (title == null || title.length() == 0) ? postSubjectItem.getContent() : postSubjectItem.getTitle();
                }
                lg.a.C0828a.f(c0828a, "RoomPostVM", "loadPostSubPageCache, hase cache,show cache, tabId:" + str + ", content:" + content, false, 4, null);
                roomPostViewModel.f50242n.n(postSubjectBean);
            } else if (!nh.m.f70474a.e()) {
                roomPostViewModel.f50242n.n(null);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }
}
