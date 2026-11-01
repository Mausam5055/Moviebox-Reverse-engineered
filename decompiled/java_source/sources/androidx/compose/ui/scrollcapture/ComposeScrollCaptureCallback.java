package androidx.compose.ui.scrollcapture;

import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import androidx.compose.runtime.v0;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u4;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.SemanticsNode;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import o0.r;

/* JADX INFO: loaded from: classes.dex */
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SemanticsNode f5892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f5893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f5894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f5895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RelativeScroller f5896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5897f;

    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1", f = "ComposeScrollCaptureCallback.android.kt", l = {190}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Runnable $onReady;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Runnable runnable, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onReady = runnable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ComposeScrollCaptureCallback.this.new AnonymousClass1(this.$onReady, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                RelativeScroller relativeScroller = ComposeScrollCaptureCallback.this.f5896e;
                this.label = 1;
                if (relativeScroller.g(0.0f, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            ComposeScrollCaptureCallback.this.f5894c.b();
            this.$onReady.run();
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1", f = "ComposeScrollCaptureCallback.android.kt", l = {Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
    static final class C09871 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Rect $captureArea;
        final /* synthetic */ Consumer<Rect> $onComplete;
        final /* synthetic */ ScrollCaptureSession $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09871(ScrollCaptureSession scrollCaptureSession, Rect rect, Consumer<Rect> consumer, Continuation<? super C09871> continuation) {
            super(2, continuation);
            this.$session = scrollCaptureSession;
            this.$captureArea = rect;
            this.$onComplete = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ComposeScrollCaptureCallback.this.new C09871(this.$session, this.$captureArea, this.$onComplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C09871) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                ComposeScrollCaptureCallback composeScrollCaptureCallback = ComposeScrollCaptureCallback.this;
                ScrollCaptureSession scrollCaptureSession = this.$session;
                r rVarD = u4.d(this.$captureArea);
                this.label = 1;
                obj = composeScrollCaptureCallback.e(scrollCaptureSession, rVarD, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.$onComplete.accept(u4.a((r) obj));
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback", f = "ComposeScrollCaptureCallback.android.kt", l = {129, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "onScrollCaptureImageRequest")
    static final class AnonymousClass2 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ComposeScrollCaptureCallback.this.e(null, null, this);
        }
    }

    public ComposeScrollCaptureCallback(SemanticsNode semanticsNode, r rVar, n0 n0Var, a aVar) {
        this.f5892a = semanticsNode;
        this.f5893b = rVar;
        this.f5894c = aVar;
        this.f5895d = o0.h(n0Var, e.f5903a);
        this.f5896e = new RelativeScroller(rVar.e(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:37:0x0109  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ScrollCaptureSession scrollCaptureSession, r rVar, Continuation continuation) throws Throwable {
        AnonymousClass2 anonymousClass2;
        int iH;
        int iD;
        ComposeScrollCaptureCallback composeScrollCaptureCallback;
        r rVar2;
        int i11;
        ComposeScrollCaptureCallback composeScrollCaptureCallback2;
        ScrollCaptureSession scrollCaptureSession2;
        int i12;
        int iC;
        int iC2;
        r rVarC;
        NodeCoordinator nodeCoordinatorE;
        Canvas canvasLockHardwareCanvas;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            int i13 = anonymousClass2.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label = i13 - Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(continuation);
        }
        Object obj = anonymousClass2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = anonymousClass2.label;
        if (i14 != 0) {
            if (i14 == 1) {
                int i15 = anonymousClass2.I$1;
                int i16 = anonymousClass2.I$0;
                r rVar3 = (r) anonymousClass2.L$2;
                ScrollCaptureSession scrollCaptureSessionA = androidx.compose.ui.scrollcapture.a.a(anonymousClass2.L$1);
                composeScrollCaptureCallback = (ComposeScrollCaptureCallback) anonymousClass2.L$0;
                ResultKt.b(obj);
                iH = i16;
                rVar = rVar3;
                iD = i15;
                scrollCaptureSession = scrollCaptureSessionA;
            } else {
                if (i14 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i12 = anonymousClass2.I$1;
                i11 = anonymousClass2.I$0;
                rVar2 = (r) anonymousClass2.L$2;
                ScrollCaptureSession scrollCaptureSessionA2 = androidx.compose.ui.scrollcapture.a.a(anonymousClass2.L$1);
                composeScrollCaptureCallback2 = (ComposeScrollCaptureCallback) anonymousClass2.L$0;
                ResultKt.b(obj);
                scrollCaptureSession2 = scrollCaptureSessionA2;
            }
            iC = composeScrollCaptureCallback2.f5896e.c(i11);
            iC2 = composeScrollCaptureCallback2.f5896e.c(i12);
            rVarC = r.c(rVar2, 0, iC, 0, iC2, 5, null);
            if (iC == iC2) {
                return r.f70618e.a();
            }
            nodeCoordinatorE = composeScrollCaptureCallback2.f5892a.e();
            if (nodeCoordinatorE != null) {
                throw new IllegalStateException("Could not find coordinator for semantics node.");
            }
            canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
            try {
                canvasLockHardwareCanvas.drawColor(0, BlendMode.CLEAR);
                m1 m1VarB = h0.b(canvasLockHardwareCanvas);
                m1VarB.c(-rVarC.f(), -rVarC.h());
                nodeCoordinatorE.H1(m1VarB, null);
                return rVarC.l(0, MathKt.d(composeScrollCaptureCallback2.f5896e.b()));
            } finally {
                scrollCaptureSession2.getSurface().unlockCanvasAndPost(canvasLockHardwareCanvas);
            }
        }
        ResultKt.b(obj);
        iH = rVar.h();
        iD = rVar.d();
        RelativeScroller relativeScroller = this.f5896e;
        anonymousClass2.L$0 = this;
        anonymousClass2.L$1 = scrollCaptureSession;
        anonymousClass2.L$2 = rVar;
        anonymousClass2.I$0 = iH;
        anonymousClass2.I$1 = iD;
        anonymousClass2.label = 1;
        if (relativeScroller.f(iH, iD, anonymousClass2) == objF) {
            return objF;
        }
        composeScrollCaptureCallback = this;
        AnonymousClass3 anonymousClass3 = new Function1<Long, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.onScrollCaptureImageRequest.3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                invoke(((Number) obj2).longValue());
                return Unit.f67061a;
            }

            public final void invoke(long j11) {
            }
        };
        anonymousClass2.L$0 = composeScrollCaptureCallback;
        anonymousClass2.L$1 = scrollCaptureSession;
        anonymousClass2.L$2 = rVar;
        anonymousClass2.I$0 = iH;
        anonymousClass2.I$1 = iD;
        anonymousClass2.label = 2;
        if (v0.b(anonymousClass3, anonymousClass2) == objF) {
            return objF;
        }
        rVar2 = rVar;
        i11 = iH;
        composeScrollCaptureCallback2 = composeScrollCaptureCallback;
        scrollCaptureSession2 = scrollCaptureSession;
        i12 = iD;
        iC = composeScrollCaptureCallback2.f5896e.c(i11);
        iC2 = composeScrollCaptureCallback2.f5896e.c(i12);
        rVarC = r.c(rVar2, 0, iC, 0, iC2, 5, null);
        if (iC == iC2) {
            return r.f70618e.a();
        }
        nodeCoordinatorE = composeScrollCaptureCallback2.f5892a.e();
        if (nodeCoordinatorE != null) {
            throw new IllegalStateException("Could not find coordinator for semantics node.");
        }
        canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
        canvasLockHardwareCanvas.drawColor(0, BlendMode.CLEAR);
        m1 m1VarB2 = h0.b(canvasLockHardwareCanvas);
        m1VarB2.c(-rVarC.f(), -rVarC.h());
        nodeCoordinatorE.H1(m1VarB2, null);
        return rVarC.l(0, MathKt.d(composeScrollCaptureCallback2.f5896e.b()));
    }

    public void onScrollCaptureEnd(Runnable runnable) {
        k.d(this.f5895d, c2.f67645a, null, new AnonymousClass1(runnable, null), 2, null);
    }

    public void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        ComposeScrollCaptureCallback_androidKt.c(this.f5895d, cancellationSignal, new C09871(scrollCaptureSession, rect, consumer, null));
    }

    public void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.accept(u4.a(this.f5893b));
    }

    public void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.f5896e.d();
        this.f5897f = 0;
        this.f5894c.a();
        runnable.run();
    }
}
