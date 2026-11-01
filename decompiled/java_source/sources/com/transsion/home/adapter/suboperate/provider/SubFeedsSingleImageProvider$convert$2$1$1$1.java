package com.transsion.home.adapter.suboperate.provider;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.tn.lib.widget.R$string;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubFeedsSingleImageProvider$convert$2$1$1$1", f = "SubFeedsSingleImageProvider.kt", l = {}, m = "invokeSuspend")
final class SubFeedsSingleImageProvider$convert$2$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ OperateItem $item;
    final /* synthetic */ Subject $subject;
    int label;
    final /* synthetic */ SubFeedsSingleImageProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubFeedsSingleImageProvider$convert$2$1$1$1(SubFeedsSingleImageProvider subFeedsSingleImageProvider, OperateItem operateItem, Subject subject, Continuation<? super SubFeedsSingleImageProvider$convert$2$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = subFeedsSingleImageProvider;
        this.$item = operateItem;
        this.$subject = subject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(Subject subject, SubFeedsSingleImageProvider subFeedsSingleImageProvider, OperateItem operateItem, boolean z10) {
        List<Object> data;
        if (z10) {
            rl.h.f(subject, "opt_sub_feeds");
            BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsSingleImageProvider.g();
            subFeedsSingleImageProvider.H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), subject, false);
        } else {
            uh.b.f76753a.d(R$string.no_network_toast);
        }
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubFeedsSingleImageProvider$convert$2$1$1$1(this.this$0, this.$item, this.$subject, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubFeedsSingleImageProvider$convert$2$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        MusicLikedFragmentViewModel musicLikedFragmentViewModelF = this.this$0.F();
        Subject feedsSubject = this.$item.getFeedsSubject();
        String subjectId = feedsSubject != null ? feedsSubject.getSubjectId() : null;
        final Subject subject = this.$subject;
        final SubFeedsSingleImageProvider subFeedsSingleImageProvider = this.this$0;
        final OperateItem operateItem = this.$item;
        musicLikedFragmentViewModelF.F(subjectId, new Function1() { // from class: com.transsion.home.adapter.suboperate.provider.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return SubFeedsSingleImageProvider$convert$2$1$1$1.d(subject, subFeedsSingleImageProvider, operateItem, ((Boolean) obj2).booleanValue());
            }
        });
        return Unit.f67061a;
    }
}
