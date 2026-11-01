package androidx.compose.animation.core;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class SuspendAnimationKt {
    public static final Object b(float f11, float f12, float f13, g gVar, Function2 function2, Continuation continuation) {
        Object objD = d(VectorConvertersKt.b(FloatCompanionObject.f67281a), Boxing.c(f11), Boxing.c(f12), Boxing.c(f13), gVar, function2, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x012b  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [T, androidx.compose.animation.core.f] */
    public static final Object c(final i iVar, final c cVar, long j11, final Function1 function1, Continuation continuation) throws Throwable {
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$4;
        Ref.ObjectRef objectRef;
        Function1 function2;
        i iVar2;
        f fVar;
        f fVar2;
        Function1<Long, Unit> function3;
        final i iVar3 = iVar;
        c cVar2 = cVar;
        if (continuation instanceof SuspendAnimationKt$animate$4) {
            suspendAnimationKt$animate$4 = (SuspendAnimationKt$animate$4) continuation;
            int i11 = suspendAnimationKt$animate$4.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                suspendAnimationKt$animate$4.label = i11 - Integer.MIN_VALUE;
            } else {
                suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(continuation);
            }
        } else {
            suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(continuation);
        }
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$5 = suspendAnimationKt$animate$4;
        Object obj = suspendAnimationKt$animate$5.result;
        Object objF = IntrinsicsKt.f();
        int i12 = suspendAnimationKt$animate$5.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            final Object objF2 = cVar2.f(0L);
            final o oVarB = cVar2.b(0L);
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                if (j11 == Long.MIN_VALUE) {
                    final float fN = n(suspendAnimationKt$animate$5.getContext());
                    Function1<Long, Unit> function4 = new Function1<Long, Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                            invoke(((Number) obj2).longValue());
                            return Unit.f67061a;
                        }

                        /* JADX WARN: Type inference failed for: r12v0, types: [T, androidx.compose.animation.core.f] */
                        public final void invoke(long j12) {
                            Ref.ObjectRef<f> objectRef3 = objectRef2;
                            Object obj2 = objF2;
                            s0 s0VarE = cVar.e();
                            o oVar = oVarB;
                            Object objG = cVar.g();
                            final i iVar4 = iVar;
                            ?? fVar3 = new f(obj2, s0VarE, oVar, j12, objG, j12, true, new Function0<Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$6.1
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Object invoke() {
                                    m6invoke();
                                    return Unit.f67061a;
                                }

                                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                public final void m6invoke() {
                                    iVar4.k(false);
                                }
                            });
                            SuspendAnimationKt.m(fVar3, j12, fN, cVar, iVar, function1);
                            objectRef3.element = fVar3;
                        }
                    };
                    suspendAnimationKt$animate$5.L$0 = iVar3;
                    suspendAnimationKt$animate$5.L$1 = cVar2;
                    function2 = function1;
                    suspendAnimationKt$animate$5.L$2 = function2;
                    suspendAnimationKt$animate$5.L$3 = objectRef2;
                    suspendAnimationKt$animate$5.label = 1;
                    if (k(cVar2, function4, suspendAnimationKt$animate$5) == objF) {
                        return objF;
                    }
                } else {
                    function2 = function1;
                    try {
                        ?? fVar3 = new f(objF2, cVar.e(), oVarB, j11, cVar.g(), j11, true, new Function0<Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$7
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m7invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m7invoke() {
                                iVar3.k(false);
                            }
                        });
                        objectRef2 = objectRef2;
                        m(fVar3, j11, n(suspendAnimationKt$animate$5.getContext()), cVar, iVar, function1);
                        objectRef2.element = fVar3;
                    } catch (CancellationException e11) {
                        e = e11;
                        objectRef2 = objectRef2;
                        objectRef = objectRef2;
                        fVar = (f) objectRef.element;
                        if (fVar != null) {
                            fVar.k(false);
                        }
                        fVar2 = (f) objectRef.element;
                        if (fVar2 != null && fVar2.c() == iVar3.d()) {
                            iVar3.k(false);
                        }
                        throw e;
                    }
                }
                iVar2 = iVar3;
                objectRef = objectRef2;
            } catch (CancellationException e12) {
                e = e12;
            }
        } else {
            if (i12 != 1 && i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) suspendAnimationKt$animate$5.L$3;
            Function1 function5 = (Function1) suspendAnimationKt$animate$5.L$2;
            c cVar3 = (c) suspendAnimationKt$animate$5.L$1;
            iVar2 = (i) suspendAnimationKt$animate$5.L$0;
            try {
                ResultKt.b(obj);
                function2 = function5;
                cVar2 = cVar3;
            } catch (CancellationException e13) {
                e = e13;
                iVar3 = iVar2;
                fVar = (f) objectRef.element;
                if (fVar != null) {
                    fVar.k(false);
                }
                fVar2 = (f) objectRef.element;
                if (fVar2 != null) {
                    iVar3.k(false);
                }
                throw e;
            }
        }
        do {
            T t11 = objectRef.element;
            Intrinsics.e(t11);
            if (!((f) t11).h()) {
                return Unit.f67061a;
            }
            final float fN2 = n(suspendAnimationKt$animate$5.getContext());
            final Ref.ObjectRef objectRef3 = objectRef;
            final c cVar4 = cVar2;
            final i iVar4 = iVar2;
            final Function1 function6 = function2;
            function3 = new Function1<Long, Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke(((Number) obj2).longValue());
                    return Unit.f67061a;
                }

                public final void invoke(long j12) {
                    f fVar4 = objectRef3.element;
                    Intrinsics.e(fVar4);
                    SuspendAnimationKt.m(fVar4, j12, fN2, cVar4, iVar4, function6);
                }
            };
            suspendAnimationKt$animate$5.L$0 = iVar2;
            suspendAnimationKt$animate$5.L$1 = cVar2;
            suspendAnimationKt$animate$5.L$2 = function2;
            suspendAnimationKt$animate$5.L$3 = objectRef;
            suspendAnimationKt$animate$5.label = 2;
        } while (k(cVar2, function3, suspendAnimationKt$animate$5) != objF);
        return objF;
    }

    public static final Object d(final s0 s0Var, Object obj, Object obj2, Object obj3, g gVar, final Function2 function2, Continuation continuation) {
        o oVarG;
        if (obj3 == null || (oVarG = (o) s0Var.a().invoke(obj3)) == null) {
            oVarG = p.g((o) s0Var.a().invoke(obj));
        }
        Object objF = f(new i(s0Var, obj, oVarG, 0L, 0L, false, 56, null), new p0(gVar, s0Var, obj, obj2, oVarG), 0L, new Function1<f, Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj4) {
                invoke((f) obj4);
                return Unit.f67061a;
            }

            public final void invoke(f fVar) {
                function2.invoke(fVar.e(), s0Var.b().invoke(fVar.g()));
            }
        }, continuation, 2, null);
        return objF == IntrinsicsKt.f() ? objF : Unit.f67061a;
    }

    public static /* synthetic */ Object e(float f11, float f12, float f13, g gVar, Function2 function2, Continuation continuation, int i11, Object obj) {
        float f14 = (i11 & 4) != 0 ? 0.0f : f13;
        if ((i11 & 8) != 0) {
            gVar = h.d(0.0f, 0.0f, null, 7, null);
        }
        return b(f11, f12, f14, gVar, function2, continuation);
    }

    public static /* synthetic */ Object f(i iVar, c cVar, long j11, Function1 function1, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = Long.MIN_VALUE;
        }
        long j12 = j11;
        if ((i11 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$5
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((f) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(f fVar) {
                }
            };
        }
        return c(iVar, cVar, j12, function1, continuation);
    }

    public static final Object g(i iVar, w wVar, boolean z10, Function1 function1, Continuation continuation) throws Throwable {
        Object objC = c(iVar, new v(wVar, iVar.e(), iVar.getValue(), iVar.g()), z10 ? iVar.d() : Long.MIN_VALUE, function1, continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f67061a;
    }

    public static /* synthetic */ Object h(i iVar, w wVar, boolean z10, Function1 function1, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animateDecay$4
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((f) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(f fVar) {
                }
            };
        }
        return g(iVar, wVar, z10, function1, continuation);
    }

    public static final Object i(i iVar, Object obj, g gVar, boolean z10, Function1 function1, Continuation continuation) throws Throwable {
        Object objC = c(iVar, new p0(gVar, iVar.e(), iVar.getValue(), obj, iVar.g()), z10 ? iVar.d() : Long.MIN_VALUE, function1, continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f67061a;
    }

    public static /* synthetic */ Object j(i iVar, Object obj, g gVar, boolean z10, Function1 function1, Continuation continuation, int i11, Object obj2) {
        if ((i11 & 2) != 0) {
            gVar = h.d(0.0f, 0.0f, null, 7, null);
        }
        g gVar2 = gVar;
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i11 & 8) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animateTo$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                    invoke((f) obj3);
                    return Unit.f67061a;
                }

                public final void invoke(f fVar) {
                }
            };
        }
        return i(iVar, obj, gVar2, z11, function1, continuation);
    }

    private static final Object k(c cVar, final Function1 function1, Continuation continuation) {
        return cVar.a() ? h0.a(function1, continuation) : androidx.compose.runtime.v0.b(new Function1<Long, Object>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$callWithFrameNanos$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            public final Object invoke(long j11) {
                return function1.invoke(Long.valueOf(j11));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).longValue());
            }
        }, continuation);
    }

    private static final void l(f fVar, long j11, long j12, c cVar, i iVar, Function1 function1) {
        fVar.j(j11);
        fVar.l(cVar.f(j12));
        fVar.m(cVar.b(j12));
        if (cVar.c(j12)) {
            fVar.i(fVar.c());
            fVar.k(false);
        }
        o(fVar, iVar);
        function1.invoke(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(f fVar, long j11, float f11, c cVar, i iVar, Function1 function1) {
        l(fVar, j11, f11 == 0.0f ? cVar.d() : (long) ((j11 - fVar.d()) / f11), cVar, iVar, function1);
    }

    public static final float n(CoroutineContext coroutineContext) {
        androidx.compose.ui.j jVar = (androidx.compose.ui.j) coroutineContext.get(androidx.compose.ui.j.f5092a1);
        float fK = jVar != null ? jVar.k() : 1.0f;
        if (!(fK >= 0.0f)) {
            k0.b("negative scale factor");
        }
        return fK;
    }

    public static final void o(f fVar, i iVar) {
        iVar.l(fVar.e());
        p.f(iVar.g(), fVar.g());
        iVar.i(fVar.b());
        iVar.j(fVar.c());
        iVar.k(fVar.h());
    }
}
