package com.transsion.postdetail.util;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import java.util.List;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.transsion.postdetail.util.ShortTVFloatManager$getShortTvEpisodeList$1$2$1", f = "ShortTVFloatManager.kt", l = {}, m = "invokeSuspend")
final class ShortTVFloatManager$getShortTvEpisodeList$1$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<ShortTvInfoEpisodeList, Unit> $callback;
    final /* synthetic */ BaseDto<ShortTvInfoEpisodeList> $it;
    final /* synthetic */ int $start;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ShortTVFloatManager$getShortTvEpisodeList$1$2$1(int i11, BaseDto<ShortTvInfoEpisodeList> baseDto, Function1<? super ShortTvInfoEpisodeList, Unit> function1, Continuation<? super ShortTVFloatManager$getShortTvEpisodeList$1$2$1> continuation) {
        super(2, continuation);
        this.$start = i11;
        this.$it = baseDto;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVFloatManager$getShortTvEpisodeList$1$2$1(this.$start, this.$it, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVFloatManager$getShortTvEpisodeList$1$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<ShortTVItem> items;
        ShortTVItem shortTVItem;
        List<ShortTVItem> items2;
        ShortTVItem shortTVItem2;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        lg.a.C0828a c0828a = lg.a.f68839a;
        int i11 = this.$start;
        ShortTvInfoEpisodeList data = this.$it.getData();
        Integer numD = null;
        Integer numD2 = (data == null || (items2 = data.getItems()) == null || (shortTVItem2 = (ShortTVItem) CollectionsKt.k0(items2)) == null) ? null : Boxing.d(shortTVItem2.getEp());
        ShortTvInfoEpisodeList data2 = this.$it.getData();
        if (data2 != null && (items = data2.getItems()) != null && (shortTVItem = (ShortTVItem) CollectionsKt.v0(items)) != null) {
            numD = Boxing.d(shortTVItem.getEp());
        }
        c0828a.c("VideoFloat", "shorttv-----getShortTvEpisodeList success, start:" + i11 + ", startEp:" + numD2 + ", lastEp:" + numD, true);
        this.$callback.invoke(this.$it.getData());
        return Unit.f67061a;
    }
}
