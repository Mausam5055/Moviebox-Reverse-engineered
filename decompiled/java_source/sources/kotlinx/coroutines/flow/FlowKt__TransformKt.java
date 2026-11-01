package kotlinx.coroutines.flow;

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

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__TransformKt {
    public static final b a(final b bVar, final Function2 function2) {
        return new b() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
            public static final class AnonymousClass2 implements c {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ c f67749a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Function2 f67750b;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {50, Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(c cVar, Function2 function2) {
                    this.f67749a = cVar;
                    this.f67750b = function2;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.c
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    Object obj2;
                    c cVar;
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
                    Object obj3 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i12 = anonymousClass1.label;
                    if (i12 != 0) {
                        if (i12 == 1) {
                            cVar = (c) anonymousClass1.L$1;
                            obj2 = anonymousClass1.L$0;
                            ResultKt.b(obj3);
                        } else {
                            if (i12 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj3);
                        }
                        return Unit.f67061a;
                    }
                    ResultKt.b(obj3);
                    c cVar2 = this.f67749a;
                    Function2 function2 = this.f67750b;
                    anonymousClass1.L$0 = obj;
                    anonymousClass1.L$1 = cVar2;
                    anonymousClass1.label = 1;
                    InlineMarker.c(6);
                    Object objInvoke = function2.invoke(obj, anonymousClass1);
                    InlineMarker.c(7);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    obj2 = obj;
                    cVar = cVar2;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    if (cVar.emit(obj2, anonymousClass1) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                }
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(c cVar, Continuation continuation) {
                Object objA = bVar.a(new AnonymousClass2(cVar, function2), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
            }
        };
    }
}
