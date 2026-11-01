package com.transsnet.downloader.fragment;

import android.widget.FrameLayout;
import androidx.core.view.PointerIconCompat;
import com.transsnet.downloader.adapter.DownloadShortTvEpListAdapter;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1", f = "DownloadReDetectorShortTVFragment.kt", l = {PointerIconCompat.TYPE_ZOOM_IN, PointerIconCompat.TYPE_GRABBING, 1024, 1027, 1032}, m = "invokeSuspend")
final class DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isSelected;
    final /* synthetic */ Ref.ObjectRef<Map<Integer, my.c>> $selectMap;
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    int label;
    final /* synthetic */ DownloadReDetectorShortTVFragment this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$1", f = "DownloadReDetectorShortTVFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.IntRef $positionStart;
        int label;
        final /* synthetic */ DownloadReDetectorShortTVFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Ref.IntRef intRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadReDetectorShortTVFragment;
            this.$positionStart = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$positionStart, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.this$0.shortTVEpAdapter;
            if (downloadShortTvEpListAdapter == null) {
                return null;
            }
            downloadShortTvEpListAdapter.notifyItemRangeChanged(this.$positionStart.element, 30);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$2", f = "DownloadReDetectorShortTVFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.IntRef $positionStart;
        int label;
        final /* synthetic */ DownloadReDetectorShortTVFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Ref.IntRef intRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = downloadReDetectorShortTVFragment;
            this.$positionStart = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$positionStart, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.this$0.shortTVEpAdapter;
            if (downloadShortTvEpListAdapter == null) {
                return null;
            }
            downloadShortTvEpListAdapter.notifyItemRangeChanged(this.$positionStart.element, this.this$0.curUnlockAllCount - this.$positionStart.element);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1$3", f = "DownloadReDetectorShortTVFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ DownloadReDetectorShortTVFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = downloadReDetectorShortTVFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            FrameLayout frameLayout;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            if (!this.this$0.isAdded() || this.this$0.isDetached() || this.this$0.isRemoving()) {
                return Unit.f67061a;
            }
            py.f0 f0Var = (py.f0) this.this$0.getMViewBinding();
            if (f0Var != null && (frameLayout = f0Var.f72692g) != null) {
                jg.c.g(frameLayout);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, boolean z10, Ref.ObjectRef<Map<Integer, my.c>> objectRef, Continuation<? super DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorShortTVFragment;
        this.$isSelected = z10;
        this.$selectMap = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1(this.this$0, this.$isSelected, this.$selectMap, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0087  */
    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    /* JADX WARN: Code duplicated, block: B:26:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x009d  */
    /* JADX WARN: Code duplicated, block: B:31:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:34:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:48:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:51:0x0110  */
    /* JADX WARN: Code duplicated, block: B:53:0x012b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x012c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0143 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0144  */
    /* JADX WARN: Code duplicated, block: B:59:0x0151  */
    /* JADX WARN: Code duplicated, block: B:61:0x015a  */
    /* JADX WARN: Code duplicated, block: B:63:0x0175 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0176  */
    /* JADX WARN: Code duplicated, block: B:67:0x018c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x0193  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x018a -> B:68:0x018d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0193 -> B:70:0x0194). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:19:0x007f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
