package com.transsnet.downloader.viewmodel;

import com.transsnet.downloader.manager.DownloadEsHelper;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getUGCSubjectList$1", f = "DownloadViewModel.kt", l = {365}, m = "invokeSuspend")
final class DownloadViewModel$getUGCSubjectList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ DownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$getUGCSubjectList$1(String str, DownloadViewModel downloadViewModel, Continuation<? super DownloadViewModel$getUGCSubjectList$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.this$0 = downloadViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$getUGCSubjectList$1(this.$subjectId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$getUGCSubjectList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            this.label = 1;
            obj = downloadEsHelperA.I(str, this);
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
        List listU0 = list != null ? CollectionsKt.U0(list) : null;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str2 = this.this$0.f60041a;
        Intrinsics.g(str2, "access$getTAG$p(...)");
        lg.a.C0828a.v(c0828a, str2, "3--getUGCSubjectList, size = " + (listU0 != null ? Boxing.d(listU0.size()) : null), false, 4, null);
        this.this$0.f60059s.n(listU0);
        return Unit.f67061a;
    }
}
