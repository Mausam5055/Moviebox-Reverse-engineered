package androidx.p009lifecycle;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.sync.a;
import kotlinx.coroutines.sync.g;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {84}, m = "invokeSuspend")
final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<n0, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ Lifecycle.State $state;
    final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {166}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ n0 $$this$coroutineScope;
        final /* synthetic */ Function2<n0, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, n0 n0Var, Function2<? super n0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$$this$coroutineScope = n0Var;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00b7  */
        /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:36:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:39:0x00d9  */
        /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, java.lang.Object] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref.ObjectRef objectRef;
            Ref.ObjectRef objectRef2;
            t1 t1Var;
            r rVar;
            t1 t1Var2;
            r rVar2;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef2 = (Ref.ObjectRef) this.L$1;
                objectRef = (Ref.ObjectRef) this.L$0;
                try {
                    ResultKt.b(obj);
                    t1Var2 = (t1) objectRef.element;
                    if (t1Var2 != null) {
                        t1.a.b(t1Var2, null, 1, null);
                    }
                    rVar2 = (r) objectRef2.element;
                    if (rVar2 != null) {
                        this.$this_repeatOnLifecycle.d(rVar2);
                    }
                    return Unit.f67061a;
                } catch (Throwable th2) {
                    th = th2;
                    t1Var = (t1) objectRef.element;
                    if (t1Var != null) {
                        t1.a.b(t1Var, null, 1, null);
                    }
                    rVar = (r) objectRef2.element;
                    if (rVar != null) {
                        this.$this_repeatOnLifecycle.d(rVar);
                    }
                    throw th;
                }
            }
            ResultKt.b(obj);
            if (this.$this_repeatOnLifecycle.b() == Lifecycle.State.DESTROYED) {
                return Unit.f67061a;
            }
            final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
            try {
                Lifecycle.State state = this.$state;
                Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                final n0 n0Var = this.$$this$coroutineScope;
                final Function2<n0, Continuation<? super Unit>, Object> function2 = this.$block;
                this.L$0 = objectRef3;
                this.L$1 = objectRef4;
                this.L$2 = state;
                this.L$3 = lifecycle;
                this.L$4 = n0Var;
                this.L$5 = function2;
                this.label = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(this), 1);
                cancellableContinuationImpl.initCancellability();
                Lifecycle.Event.Companion companion = Lifecycle.Event.INSTANCE;
                final Lifecycle.Event eventD = companion.d(state);
                final Lifecycle.Event eventA = companion.a(state);
                final a aVarB = g.b(false, 1, null);
                ?? r11 = new r() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
                    @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {171, 110}, m = "invokeSuspend")
                    @SourceDebugExtension
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                        final /* synthetic */ Function2<n0, Continuation<? super Unit>, Object> $block;
                        final /* synthetic */ a $mutex;
                        Object L$0;
                        Object L$1;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        AnonymousClass1(a aVar, Function2<? super n0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$mutex = aVar;
                            this.$block = function2;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$mutex, this.$block, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            a aVar;
                            Function2<n0, Continuation<? super Unit>, Object> function2;
                            a aVar2;
                            Throwable th2;
                            Object objF = IntrinsicsKt.f();
                            int i11 = this.label;
                            try {
                                if (i11 == 0) {
                                    ResultKt.b(obj);
                                    aVar = this.$mutex;
                                    function2 = this.$block;
                                    this.L$0 = aVar;
                                    this.L$1 = function2;
                                    this.label = 1;
                                    if (aVar.h(null, this) == objF) {
                                        return objF;
                                    }
                                } else {
                                    if (i11 != 1) {
                                        if (i11 != 2) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        aVar2 = (a) this.L$0;
                                        try {
                                            ResultKt.b(obj);
                                            Unit unit = Unit.f67061a;
                                            aVar2.unlock(null);
                                            return Unit.f67061a;
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            aVar2.unlock(null);
                                            throw th2;
                                        }
                                    }
                                    function2 = (Function2) this.L$1;
                                    a aVar3 = (a) this.L$0;
                                    ResultKt.b(obj);
                                    aVar = aVar3;
                                }
                                RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(function2, null);
                                this.L$0 = aVar;
                                this.L$1 = null;
                                this.label = 2;
                                if (o0.e(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) == objF) {
                                    return objF;
                                }
                                aVar2 = aVar;
                                Unit unit2 = Unit.f67061a;
                                aVar2.unlock(null);
                                return Unit.f67061a;
                            } catch (Throwable th4) {
                                aVar2 = aVar;
                                th2 = th4;
                                aVar2.unlock(null);
                                throw th2;
                            }
                        }
                    }

                    /* JADX WARN: Type inference failed for: r9v5, types: [T, kotlinx.coroutines.t1] */
                    @Override // androidx.p009lifecycle.r
                    public final void onStateChanged(u uVar, Lifecycle.Event event) {
                        Intrinsics.h(uVar, "<anonymous parameter 0>");
                        Intrinsics.h(event, "event");
                        if (event == eventD) {
                            objectRef3.element = k.d(n0Var, null, null, new AnonymousClass1(aVarB, function2, null), 3, null);
                            return;
                        }
                        if (event == eventA) {
                            t1 t1Var3 = (t1) objectRef3.element;
                            if (t1Var3 != null) {
                                t1.a.b(t1Var3, null, 1, null);
                            }
                            objectRef3.element = null;
                        }
                        if (event == Lifecycle.Event.ON_DESTROY) {
                            n nVar = cancellableContinuationImpl;
                            Result.Companion companion2 = Result.INSTANCE;
                            nVar.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                        }
                    }
                };
                objectRef4.element = r11;
                Intrinsics.f(r11, "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver");
                lifecycle.a((r) r11);
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(this);
                }
                if (result == objF) {
                    return objF;
                }
                objectRef = objectRef3;
                objectRef2 = objectRef4;
                t1Var2 = (t1) objectRef.element;
                if (t1Var2 != null) {
                    t1.a.b(t1Var2, null, 1, null);
                }
                rVar2 = (r) objectRef2.element;
                if (rVar2 != null) {
                    this.$this_repeatOnLifecycle.d(rVar2);
                }
                return Unit.f67061a;
            } catch (Throwable th3) {
                th = th3;
                objectRef = objectRef3;
                objectRef2 = objectRef4;
                t1Var = (t1) objectRef.element;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
                rVar = (r) objectRef2.element;
                if (rVar != null) {
                    this.$this_repeatOnLifecycle.d(rVar);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Lifecycle.State state, Function2<? super n0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super RepeatOnLifecycleKt$repeatOnLifecycle$3> continuation) {
        super(2, continuation);
        this.$this_repeatOnLifecycle = lifecycle;
        this.$state = state;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.$this_repeatOnLifecycle, this.$state, this.$block, continuation);
        repeatOnLifecycleKt$repeatOnLifecycle$3.L$0 = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            a2 a2VarQ = y0.c().q();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, n0Var, this.$block, null);
            this.label = 1;
            if (i.g(a2VarQ, anonymousClass1, this) == objF) {
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
