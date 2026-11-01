package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.semantics.SemanticsProperties;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", FrameworkConstants.GLOBAL_DATA_KEY_DELTA}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1", f = "ComposeScrollCaptureCallback.android.kt", l = {85}, m = "invokeSuspend")
@SourceDebugExtension
final class ComposeScrollCaptureCallback$scrollTracker$1 extends SuspendLambda implements Function2<Float, Continuation<? super Float>, Object> {
    /* synthetic */ float F$0;
    boolean Z$0;
    int label;
    final /* synthetic */ ComposeScrollCaptureCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposeScrollCaptureCallback$scrollTracker$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, Continuation<? super ComposeScrollCaptureCallback$scrollTracker$1> continuation) {
        super(2, continuation);
        this.this$0 = composeScrollCaptureCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ComposeScrollCaptureCallback$scrollTracker$1 composeScrollCaptureCallback$scrollTracker$1 = new ComposeScrollCaptureCallback$scrollTracker$1(this.this$0, continuation);
        composeScrollCaptureCallback$scrollTracker$1.F$0 = ((Number) obj).floatValue();
        return composeScrollCaptureCallback$scrollTracker$1;
    }

    public final Object invoke(float f11, Continuation<? super Float> continuation) {
        return ((ComposeScrollCaptureCallback$scrollTracker$1) create(Float.valueOf(f11), continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).floatValue(), (Continuation<? super Float>) obj2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            float f11 = this.F$0;
            Function2 function2C = j.c(this.this$0.f5892a);
            if (function2C == null) {
                g0.a.c("Required value was null.");
                throw new KotlinNothingValueException();
            }
            boolean zB = ((androidx.compose.ui.semantics.g) this.this$0.f5892a.w().j(SemanticsProperties.f5919a.H())).b();
            if (zB) {
                f11 = -f11;
            }
            y.g gVarD = y.g.d(y.h.a(0.0f, f11));
            this.Z$0 = zB;
            this.label = 1;
            obj = function2C.invoke(gVarD, this);
            if (obj == objF) {
                return objF;
            }
            z10 = zB;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = this.Z$0;
            ResultKt.b(obj);
        }
        float fN = y.g.n(((y.g) obj).v());
        if (z10) {
            fN = -fN;
        }
        return Boxing.c(fN);
    }
}
