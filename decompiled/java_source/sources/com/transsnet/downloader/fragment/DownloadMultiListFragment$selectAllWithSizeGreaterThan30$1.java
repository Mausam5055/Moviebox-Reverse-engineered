package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1", f = "DownloadMultiListFragment.kt", l = {342, 345, 348, 351, 355}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<DownloadBean> $data;
    final /* synthetic */ boolean $isSelected;
    final /* synthetic */ int $size;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    int label;
    final /* synthetic */ DownloadMultiListFragment this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2", f = "DownloadMultiListFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.LongRef $totalSize;
        int label;
        final /* synthetic */ DownloadMultiListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DownloadMultiListFragment downloadMultiListFragment, Ref.LongRef longRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = downloadMultiListFragment;
            this.$totalSize = longRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$totalSize, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListF1;
            List<Object> data;
            CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListF2;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            if (!this.this$0.isAdded() || this.this$0.isDetached() || this.this$0.isRemoving()) {
                return Unit.f67061a;
            }
            ny.c cVar = this.this$0.tabControl;
            if (cVar != null) {
                cVar.x(this.this$0.resolutionTabPosition, Boxing.e(this.$totalSize.element));
            }
            ny.c cVar2 = this.this$0.tabControl;
            if (cVar2 != null) {
                cVar2.U(false);
            }
            com.transsnet.downloader.adapter.g gVar = this.this$0.mAdapter;
            if (gVar != null && (copyOnWriteArrayListF1 = gVar.F1()) != null) {
                DownloadMultiListFragment downloadMultiListFragment = this.this$0;
                lg.a.C0828a c0828a = lg.a.f68839a;
                String tag = downloadMultiListFragment.getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                com.transsnet.downloader.adapter.g gVar2 = downloadMultiListFragment.mAdapter;
                Integer numD = null;
                Integer numD2 = (gVar2 == null || (copyOnWriteArrayListF2 = gVar2.F1()) == null) ? null : Boxing.d(copyOnWriteArrayListF2.size());
                int i11 = downloadMultiListFragment.unableSize;
                com.transsnet.downloader.adapter.g gVar3 = downloadMultiListFragment.mAdapter;
                if (gVar3 != null && (data = gVar3.getData()) != null) {
                    numD = Boxing.d(data.size());
                }
                lg.a.C0828a.v(c0828a, tag, "selectAllWithSizeGreaterThan30,checkedSize = " + numD2 + ",unableSize = " + i11 + ", dataSize = " + numD, false, 4, null);
                downloadMultiListFragment.o1();
                ny.c cVar3 = downloadMultiListFragment.tabControl;
                if (cVar3 != null) {
                    int i12 = downloadMultiListFragment.resolutionTabPosition;
                    int size = copyOnWriteArrayListF1.size() + downloadMultiListFragment.unableSize;
                    com.transsnet.downloader.adapter.g gVar4 = downloadMultiListFragment.mAdapter;
                    Intrinsics.e(gVar4);
                    cVar3.k(i12, copyOnWriteArrayListF1, size == gVar4.getData().size());
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1(List<DownloadBean> list, DownloadMultiListFragment downloadMultiListFragment, boolean z10, int i11, Continuation<? super DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1> continuation) {
        super(2, continuation);
        this.$data = list;
        this.this$0 = downloadMultiListFragment;
        this.$isSelected = z10;
        this.$size = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1(this.$data, this.this$0, this.$isSelected, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:21:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:24:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:29:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:37:0x0110  */
    /* JADX WARN: Code duplicated, block: B:39:0x0131 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x0132  */
    /* JADX WARN: Code duplicated, block: B:43:0x0154 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0155  */
    /* JADX WARN: Code duplicated, block: B:45:0x0164  */
    /* JADX WARN: Code duplicated, block: B:47:0x0168  */
    /* JADX WARN: Code duplicated, block: B:49:0x0188 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0189  */
    /* JADX WARN: Code duplicated, block: B:53:0x01aa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x01b6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x01a8 -> B:54:0x01ab). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01b6 -> B:56:0x01ba). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:40:0x0132
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
