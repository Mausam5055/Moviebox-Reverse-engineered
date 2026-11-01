package com.transsnet.downloader.util;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.transfer.impl.entity.FileData;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1", f = "DownloadTransferUtils.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadTransferUtils$getTransferDataList$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<List<FileData>, Unit> $callback;
    final /* synthetic */ int $coverWidth;
    final /* synthetic */ Map<String, String> $pathMap;
    final /* synthetic */ List<DownloadBean> $selectedList;
    int label;

    /* JADX INFO: renamed from: com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1$2", f = "DownloadTransferUtils.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<List<FileData>, Unit> $callback;
        final /* synthetic */ List<FileData> $fileDataList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super List<FileData>, Unit> function1, List<FileData> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$fileDataList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$callback, this.$fileDataList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.C0828a.f(lg.a.f68839a, TransferBottomToolsView.TAG, "getTransferDataList-----3", false, 4, null);
            this.$callback.invoke(this.$fileDataList);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadTransferUtils$getTransferDataList$2$1(List<DownloadBean> list, Map<String, String> map, int i11, Function1<? super List<FileData>, Unit> function1, Continuation<? super DownloadTransferUtils$getTransferDataList$2$1> continuation) {
        super(2, continuation);
        this.$selectedList = list;
        this.$pathMap = map;
        this.$coverWidth = i11;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadTransferUtils$getTransferDataList$2$1(this.$selectedList, this.$pathMap, this.$coverWidth, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadTransferUtils$getTransferDataList$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            List<DownloadBean> list = this.$selectedList;
            Map<String, String> map = this.$pathMap;
            int i12 = this.$coverWidth;
            for (DownloadBean downloadBean : list) {
                if (downloadBean.isSeriesCollection()) {
                    for (DownloadBean downloadBean2 : downloadBean.getSeriesList()) {
                        if (downloadBean2.getIsCheck()) {
                            DownloadTransferUtils downloadTransferUtils = DownloadTransferUtils.f59899a;
                            arrayList.add(downloadTransferUtils.h(downloadTransferUtils.d(map, i12, downloadBean), downloadBean2));
                        }
                    }
                } else {
                    DownloadTransferUtils downloadTransferUtils2 = DownloadTransferUtils.f59899a;
                    Boxing.a(arrayList.add(downloadTransferUtils2.h(downloadTransferUtils2.d(map, i12, downloadBean), downloadBean)));
                }
            }
            a2 a2VarC = y0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$callback, arrayList, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
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
