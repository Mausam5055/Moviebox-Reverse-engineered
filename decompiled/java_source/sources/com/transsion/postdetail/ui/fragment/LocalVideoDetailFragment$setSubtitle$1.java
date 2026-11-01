package com.transsion.postdetail.ui.fragment;

import com.transsion.baselib.db.download.DownloadBean;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$setSubtitle$1", f = "LocalVideoDetailFragment.kt", l = {1504, 1510}, m = "invokeSuspend")
final class LocalVideoDetailFragment$setSubtitle$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ LocalVideoDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailFragment$setSubtitle$1(LocalVideoDetailFragment localVideoDetailFragment, Continuation<? super LocalVideoDetailFragment$setSubtitle$1> continuation) {
        super(2, continuation);
        this.this$0 = localVideoDetailFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailFragment$setSubtitle$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailFragment$setSubtitle$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    /* JADX WARN: Code duplicated, block: B:18:0x0069  */
    /* JADX WARN: Code duplicated, block: B:21:0x00a7 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        DownloadBean downloadBean;
        LocalVideoDetailFragment localVideoDetailFragment;
        List list;
        Integer numD;
        kotlinx.coroutines.a2 a2VarC;
        LocalVideoDetailFragment$setSubtitle$1$1$1 localVideoDetailFragment$setSubtitle$1$1$1;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            downloadBean = this.this$0.downloadBean;
            if (downloadBean != null) {
                localVideoDetailFragment = this.this$0;
                com.transsion.subtitle.h hVarB = com.transsion.subtitle.h.f54887a.b();
                String subtitleResId = downloadBean.getSubtitleResId();
                this.L$0 = localVideoDetailFragment;
                this.L$1 = downloadBean;
                this.label = 1;
                obj = hVarB.a(subtitleResId, this);
                if (obj == objF) {
                    return objF;
                }
                list = (List) obj;
                lg.a.C0828a c0828a = lg.a.f68839a;
                String strA = com.transsion.baselib.report.a.f43340a.a();
                String totalTitleName = downloadBean.getTotalTitleName();
                String subtitleResId2 = downloadBean.getSubtitleResId();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                c0828a.p(strA, new String[]{"----- setSubtitle, name:" + totalTitleName + ", subtitleResId:" + subtitleResId2 + ", size = " + numD}, true);
                a2VarC = kotlinx.coroutines.y0.c();
                localVideoDetailFragment$setSubtitle$1$1$1 = new LocalVideoDetailFragment$setSubtitle$1$1$1(list, localVideoDetailFragment, downloadBean, null);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, localVideoDetailFragment$setSubtitle$1$1$1, this) == objF) {
                    return objF;
                }
            }
        } else if (i11 == 1) {
            downloadBean = (DownloadBean) this.L$1;
            localVideoDetailFragment = (LocalVideoDetailFragment) this.L$0;
            ResultKt.b(obj);
            list = (List) obj;
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String strA2 = com.transsion.baselib.report.a.f43340a.a();
            String totalTitleName2 = downloadBean.getTotalTitleName();
            String subtitleResId3 = downloadBean.getSubtitleResId();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            c0828a2.p(strA2, new String[]{"----- setSubtitle, name:" + totalTitleName2 + ", subtitleResId:" + subtitleResId3 + ", size = " + numD}, true);
            a2VarC = kotlinx.coroutines.y0.c();
            localVideoDetailFragment$setSubtitle$1$1$1 = new LocalVideoDetailFragment$setSubtitle$1$1$1(list, localVideoDetailFragment, downloadBean, null);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, localVideoDetailFragment$setSubtitle$1$1$1, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
