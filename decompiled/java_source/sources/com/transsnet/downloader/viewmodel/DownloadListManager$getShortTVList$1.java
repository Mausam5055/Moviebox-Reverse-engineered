package com.transsnet.downloader.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsnet.downloader.bean.DownloadListBean;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getShortTVList$1", f = "DownloadListManager.kt", l = {471}, m = "invokeSuspend")
final class DownloadListManager$getShortTVList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $endPosition;
    final /* synthetic */ int $resolution;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $subjectTitle;
    int label;
    final /* synthetic */ DownloadListManager this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadListManager$getShortTVList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getShortTVList$1$1", f = "DownloadListManager.kt", l = {455, 465, 467}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $endPosition;
        final /* synthetic */ int $resolution;
        final /* synthetic */ int $startPosition;
        final /* synthetic */ String $subjectId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DownloadListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadListManager downloadListManager, String str, int i11, int i12, int i13, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadListManager;
            this.$subjectId = str;
            this.$startPosition = i11;
            this.$endPosition = i12;
            this.$resolution = i13;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$startPosition, this.$endPosition, this.$resolution, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objC;
            Object obj2;
            kotlinx.coroutines.flow.c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar2;
                    obj2 = objF;
                    objC = obj;
                } else {
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.c cVar3 = (kotlinx.coroutines.flow.c) this.L$0;
            qy.a aVarL = this.this$0.L();
            String strA = vg.a.f77324a.a();
            String str = this.$subjectId;
            int i12 = this.$startPosition;
            int i13 = this.$endPosition;
            Integer numD = Boxing.d(this.$resolution);
            this.L$0 = cVar3;
            this.label = 1;
            objC = qy.a.C0897a.c(aVarL, strA, str, null, 0, 0, i12, i13, 1, numD, 0, 0, 0, this, 3608, null);
            obj2 = objF;
            if (objC == obj2) {
                return obj2;
            }
            cVar = cVar3;
            BaseDto baseDto = (BaseDto) objC;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == obj2) {
                    return obj2;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(null, this) == obj2) {
                    return obj2;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadListManager$getShortTVList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getShortTVList$1$2", f = "DownloadListManager.kt", l = {470}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
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

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f60009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60011c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.p009lifecycle.b0 f60012d;

        a(String str, int i11, int i12, androidx.p009lifecycle.b0 b0Var) {
            this.f60009a = str;
            this.f60010b = i11;
            this.f60011c = i12;
            this.f60012d = b0Var;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) {
            List<DownloadItem> items;
            Integer numD = null;
            String title = downloadListBean != null ? downloadListBean.getTitle() : null;
            if ((title == null || title.length() == 0) && downloadListBean != null) {
                downloadListBean.setTitle(this.f60009a);
            }
            if (downloadListBean != null) {
                downloadListBean.setEndPosition(this.f60010b);
            }
            if (downloadListBean != null) {
                downloadListBean.setStartPosition(this.f60011c);
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            if (downloadListBean != null && (items = downloadListBean.getItems()) != null) {
                numD = Boxing.d(items.size());
            }
            lg.a.C0828a.f(c0828a, "DownloadReDetector", "getBottomList, on get data , size= " + numD, false, 4, null);
            androidx.p009lifecycle.b0 b0Var = this.f60012d;
            if (b0Var != null) {
                b0Var.n(downloadListBean);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadListManager$getShortTVList$1(int i11, DownloadListManager downloadListManager, String str, int i12, int i13, String str2, Continuation<? super DownloadListManager$getShortTVList$1> continuation) {
        super(2, continuation);
        this.$resolution = i11;
        this.this$0 = downloadListManager;
        this.$subjectId = str;
        this.$startPosition = i12;
        this.$endPosition = i13;
        this.$subjectTitle = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadListManager$getShortTVList$1(this.$resolution, this.this$0, this.$subjectId, this.$startPosition, this.$endPosition, this.$subjectTitle, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadListManager$getShortTVList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            lg.a.C0828a.f(lg.a.f68839a, "DownloadReDetector", "getBottomList,  resolution = " + this.$resolution, false, 4, null);
            this.this$0.r(this.$resolution);
            androidx.p009lifecycle.b0 b0Var = (androidx.p009lifecycle.b0) this.this$0.A().get(Boxing.d(this.$resolution));
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$subjectId, this.$startPosition, this.$endPosition, this.$resolution, null)), new AnonymousClass2(null));
            a aVar = new a(this.$subjectTitle, this.$endPosition, this.$startPosition, b0Var);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
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
