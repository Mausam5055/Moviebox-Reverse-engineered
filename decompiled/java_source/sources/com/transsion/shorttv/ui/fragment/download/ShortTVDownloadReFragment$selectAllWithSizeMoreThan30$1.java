package com.transsion.shorttv.ui.fragment.download;

import android.widget.FrameLayout;
import com.transsion.shorttv.ui.adapter.ShortTvDownloadEpListAdapter;
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
import kotlinx.coroutines.n0;
import ms.z;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1", f = "ShortTVDownloadReFragment.kt", l = {1024, 1027, 1030, 1033, 1038}, m = "invokeSuspend")
final class ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isSelected;
    final /* synthetic */ Ref.ObjectRef<Map<Integer, js.d>> $selectMap;
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    int label;
    final /* synthetic */ ShortTVDownloadReFragment this$0;

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1", f = "ShortTVDownloadReFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.IntRef $positionStart;
        int label;
        final /* synthetic */ ShortTVDownloadReFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortTVDownloadReFragment shortTVDownloadReFragment, Ref.IntRef intRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = shortTVDownloadReFragment;
            this.$positionStart = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$positionStart, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.this$0.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter == null) {
                return null;
            }
            shortTvDownloadEpListAdapter.notifyItemRangeChanged(this.$positionStart.element, 30);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2", f = "ShortTVDownloadReFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $dataSize;
        final /* synthetic */ Ref.IntRef $positionStart;
        int label;
        final /* synthetic */ ShortTVDownloadReFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ShortTVDownloadReFragment shortTVDownloadReFragment, Ref.IntRef intRef, int i11, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = shortTVDownloadReFragment;
            this.$positionStart = intRef;
            this.$dataSize = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$positionStart, this.$dataSize, continuation);
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
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.this$0.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter == null) {
                return null;
            }
            int i11 = this.$positionStart.element;
            shortTvDownloadEpListAdapter.notifyItemRangeChanged(i11, this.$dataSize - i11);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3", f = "ShortTVDownloadReFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ ShortTVDownloadReFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ShortTVDownloadReFragment shortTVDownloadReFragment, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = shortTVDownloadReFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

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
            z zVar = (z) this.this$0.getMViewBinding();
            if (zVar != null && (frameLayout = zVar.f69968h) != null) {
                yr.b.b(frameLayout);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1(ShortTVDownloadReFragment shortTVDownloadReFragment, boolean z10, Ref.ObjectRef<Map<Integer, js.d>> objectRef, Continuation<? super ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTVDownloadReFragment;
        this.$isSelected = z10;
        this.$selectMap = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1(this.this$0, this.$isSelected, this.$selectMap, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f  */
    /* JADX WARN: Code duplicated, block: B:30:0x009c  */
    /* JADX WARN: Code duplicated, block: B:32:0x009f  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:48:0x010a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x010b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0121 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0122  */
    /* JADX WARN: Code duplicated, block: B:55:0x012e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0132  */
    /* JADX WARN: Code duplicated, block: B:59:0x014d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:60:0x014e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0165 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0166  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0163 -> B:54:0x0127). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0166 -> B:65:0x0167). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:63:0x0165
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
