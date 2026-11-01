package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes7.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Function2 f67722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f67723b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {112, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, b bVar) {
        this.f67722a = function2;
        this.f67723b = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b
    public Object a(c cVar, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Throwable th2;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        c cVar2;
        b bVar;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i11 = anonymousClass1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i11 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = anonymousClass1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            SafeCollector safeCollector2 = new SafeCollector(cVar, anonymousClass1.getContext());
            try {
                Function2 function2 = this.f67722a;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = cVar;
                anonymousClass1.L$2 = safeCollector2;
                anonymousClass1.label = 1;
                InlineMarker.c(6);
                Object objInvoke = function2.invoke(safeCollector2, anonymousClass1);
                InlineMarker.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                cVar2 = cVar;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                bVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f67723b;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (bVar.a(cVar2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th3) {
                th2 = th3;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        } else if (i12 == 1) {
            safeCollector = (SafeCollector) anonymousClass1.L$2;
            cVar2 = (c) anonymousClass1.L$1;
            flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) anonymousClass1.L$0;
            try {
                ResultKt.b(obj);
                safeCollector.releaseIntercepted();
                bVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f67723b;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (bVar.a(cVar2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th4) {
                th2 = th4;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        } else {
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
