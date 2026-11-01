package com.transsion.search.viewmodel;

import android.text.TextUtils;
import android.util.Log;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import java.util.ArrayList;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.viewmodel.SearchWorkViewModel$getVideoHistoryList$1", f = "SearchWorkViewModel.kt", l = {44}, m = "invokeSuspend")
@SourceDebugExtension
final class SearchWorkViewModel$getVideoHistoryList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isRefreshAll;
    int label;
    final /* synthetic */ SearchWorkViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchWorkViewModel$getVideoHistoryList$1(boolean z10, SearchWorkViewModel searchWorkViewModel, Continuation<? super SearchWorkViewModel$getVideoHistoryList$1> continuation) {
        super(2, continuation);
        this.$isRefreshAll = z10;
        this.this$0 = searchWorkViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchWorkViewModel$getVideoHistoryList$1(this.$isRefreshAll, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchWorkViewModel$getVideoHistoryList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ArrayList arrayList;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.$isRefreshAll) {
                this.this$0.m(0);
                this.this$0.f52250a = true;
                this.this$0.f52252c.clear();
            }
            VideoDetailPlayDao videoDetailPlayDaoJ = this.this$0.j();
            int i12 = this.this$0.i();
            int i13 = this.this$0.f52255f;
            this.label = 1;
            obj = videoDetailPlayDaoJ.d(i12, i13, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        List list2 = list;
        if (list2 == null || list2.isEmpty() || list.size() < this.this$0.f52255f) {
            this.this$0.f52250a = false;
        }
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (TextUtils.isDigitsOnly(((VideoDetailPlayBean) obj2).getId())) {
                    arrayList.add(obj2);
                }
            }
        } else {
            arrayList = null;
        }
        Integer numD = arrayList != null ? Boxing.d(arrayList.size()) : null;
        Log.e("SearchWork", "获取视频播放记录 数量： " + numD + "，hasMore:" + this.this$0.g());
        if (arrayList == null) {
            return Unit.f67061a;
        }
        this.this$0.f52252c.addAll(arrayList);
        SearchWorkViewModel searchWorkViewModel = this.this$0;
        searchWorkViewModel.m(searchWorkViewModel.i() + arrayList.size());
        this.this$0.h().n(CollectionsKt.U0(this.this$0.f52252c));
        return Unit.f67061a;
    }
}
