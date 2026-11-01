package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.e0;
import androidx.compose.ui.input.pointer.w;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", l = {99}, m = "invokeSuspend")
final class TapGestureDetectorKt$detectTapGestures$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<y.g, Unit> $onDoubleTap;
    final /* synthetic */ Function1<y.g, Unit> $onLongPress;
    final /* synthetic */ Function3<i, y.g, Continuation<? super Unit>, Object> $onPress;
    final /* synthetic */ Function1<y.g, Unit> $onTap;
    final /* synthetic */ e0 $this_detectTapGestures;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/c;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/c;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", l = {100, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 129, 141, 156, 178}, m = "invokeSuspend")
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<androidx.compose.ui.input.pointer.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ n0 $$this$coroutineScope;
        final /* synthetic */ Function1<y.g, Unit> $onDoubleTap;
        final /* synthetic */ Function1<y.g, Unit> $onLongPress;
        final /* synthetic */ Function3<i, y.g, Continuation<? super Unit>, Object> $onPress;
        final /* synthetic */ Function1<y.g, Unit> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1", f = "TapGestureDetector.kt", l = {103}, m = "invokeSuspend")
        static final class C00311 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00311(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super C00311> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00311(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C00311) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    this.label = 1;
                    if (pressGestureScopeImpl.z(this) == objF) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$10, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$10", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass10 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass10(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass10> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass10(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass10) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.$pressScope.v();
                return Unit.f67061a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$2", f = "TapGestureDetector.kt", l = {106}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ w $down;
            final /* synthetic */ Function3<i, y.g, Continuation<? super Unit>, Object> $onPress;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(Function3<? super i, ? super y.g, ? super Continuation<? super Unit>, ? extends Object> function3, PressGestureScopeImpl pressGestureScopeImpl, w wVar, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$onPress = function3;
                this.$pressScope = pressGestureScopeImpl;
                this.$down = wVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$onPress, this.$pressScope, this.$down, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    Function3<i, y.g, Continuation<? super Unit>, Object> function3 = this.$onPress;
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    y.g gVarD = y.g.d(this.$down.h());
                    this.label = 1;
                    if (function3.invoke(pressGestureScopeImpl, gVarD, this) == objF) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/c;", "Landroidx/compose/ui/input/pointer/w;", "<anonymous>", "(Landroidx/compose/ui/input/pointer/c;)Landroidx/compose/ui/input/pointer/w;"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$3", f = "TapGestureDetector.kt", l = {Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE}, m = "invokeSuspend")
        static final class AnonymousClass3 extends RestrictedSuspendLambda implements Function2<androidx.compose.ui.input.pointer.c, Continuation<? super w>, Object> {
            private /* synthetic */ Object L$0;
            int label;

            AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                anonymousClass3.L$0 = obj;
                return anonymousClass3;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(androidx.compose.ui.input.pointer.c cVar, Continuation<? super w> continuation) {
                return ((AnonymousClass3) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    androidx.compose.ui.input.pointer.c cVar = (androidx.compose.ui.input.pointer.c) this.L$0;
                    this.label = 1;
                    obj = TapGestureDetectorKt.k(cVar, null, this, 1, null);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$4, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$4", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass4(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.$pressScope.n();
                return Unit.f67061a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$5, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$5", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass5(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass5> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass5(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.$pressScope.v();
                return Unit.f67061a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$6, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$6", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass6 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass6(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass6> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass6(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass6) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.$pressScope.v();
                return Unit.f67061a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$7, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$7", f = "TapGestureDetector.kt", l = {148}, m = "invokeSuspend")
        static final class AnonymousClass7 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass7(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass7> continuation) {
                super(2, continuation);
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass7(this.$pressScope, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass7) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    this.label = 1;
                    if (pressGestureScopeImpl.z(this) == objF) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$8, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$8", f = "TapGestureDetector.kt", l = {151}, m = "invokeSuspend")
        static final class AnonymousClass8 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function3<i, y.g, Continuation<? super Unit>, Object> $onPress;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            final /* synthetic */ w $secondDown;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass8(Function3<? super i, ? super y.g, ? super Continuation<? super Unit>, ? extends Object> function3, PressGestureScopeImpl pressGestureScopeImpl, w wVar, Continuation<? super AnonymousClass8> continuation) {
                super(2, continuation);
                this.$onPress = function3;
                this.$pressScope = pressGestureScopeImpl;
                this.$secondDown = wVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass8(this.$onPress, this.$pressScope, this.$secondDown, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass8) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    Function3<i, y.g, Continuation<? super Unit>, Object> function3 = this.$onPress;
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    y.g gVarD = y.g.d(this.$secondDown.h());
                    this.label = 1;
                    if (function3.invoke(pressGestureScopeImpl, gVarD, this) == objF) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/c;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/c;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9", f = "TapGestureDetector.kt", l = {157}, m = "invokeSuspend")
        static final class AnonymousClass9 extends RestrictedSuspendLambda implements Function2<androidx.compose.ui.input.pointer.c, Continuation<? super Unit>, Object> {
            final /* synthetic */ n0 $$this$coroutineScope;
            final /* synthetic */ Function1<y.g, Unit> $onDoubleTap;
            final /* synthetic */ Function1<y.g, Unit> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            final /* synthetic */ Ref.ObjectRef<w> $upOrCancel;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9$1", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
            static final class C00321 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00321(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super C00321> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00321(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((C00321) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    this.$pressScope.v();
                    return Unit.f67061a;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$9$2", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
            static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.$pressScope, continuation);
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
                    this.$pressScope.n();
                    return Unit.f67061a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass9(n0 n0Var, Function1<? super y.g, Unit> function1, Function1<? super y.g, Unit> function2, Ref.ObjectRef<w> objectRef, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass9> continuation) {
                super(2, continuation);
                this.$$this$coroutineScope = n0Var;
                this.$onDoubleTap = function1;
                this.$onTap = function2;
                this.$upOrCancel = objectRef;
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass9 anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, this.$upOrCancel, this.$pressScope, continuation);
                anonymousClass9.L$0 = obj;
                return anonymousClass9;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(androidx.compose.ui.input.pointer.c cVar, Continuation<? super Unit> continuation) {
                return ((AnonymousClass9) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    androidx.compose.ui.input.pointer.c cVar = (androidx.compose.ui.input.pointer.c) this.L$0;
                    this.label = 1;
                    obj = TapGestureDetectorKt.k(cVar, null, this, 1, null);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                w wVar = (w) obj;
                if (wVar != null) {
                    wVar.a();
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00321(this.$pressScope, null), 3, null);
                    this.$onDoubleTap.invoke(y.g.d(wVar.h()));
                    return Unit.f67061a;
                }
                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$pressScope, null), 3, null);
                Function1<y.g, Unit> function1 = this.$onTap;
                if (function1 == null) {
                    return null;
                }
                function1.invoke(y.g.d(this.$upOrCancel.element.h()));
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(n0 n0Var, Function3<? super i, ? super y.g, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super y.g, Unit> function1, Function1<? super y.g, Unit> function2, Function1<? super y.g, Unit> function4, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$coroutineScope = n0Var;
            this.$onPress = function3;
            this.$onLongPress = function1;
            this.$onDoubleTap = function2;
            this.$onTap = function4;
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$coroutineScope, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, this.$pressScope, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.ui.input.pointer.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:27:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:28:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:32:0x00f1 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x00f2  */
        /* JADX WARN: Code duplicated, block: B:36:0x00fb A[Catch: PointerEventTimeoutCancellationException -> 0x010c, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x010c, blocks: (B:34:0x00f5, B:36:0x00fb, B:38:0x0110), top: B:93:0x00f5 }] */
        /* JADX WARN: Code duplicated, block: B:38:0x0110 A[Catch: PointerEventTimeoutCancellationException -> 0x010c, TRY_LEAVE, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x010c, blocks: (B:34:0x00f5, B:36:0x00fb, B:38:0x0110), top: B:93:0x00f5 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x012a  */
        /* JADX WARN: Code duplicated, block: B:45:0x0148 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:49:0x015f  */
        /* JADX WARN: Code duplicated, block: B:51:0x0163  */
        /* JADX WARN: Code duplicated, block: B:53:0x0167  */
        /* JADX WARN: Code duplicated, block: B:54:0x0176  */
        /* JADX WARN: Code duplicated, block: B:56:0x018b A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:57:0x018c  */
        /* JADX WARN: Code duplicated, block: B:60:0x0191  */
        /* JADX WARN: Code duplicated, block: B:62:0x0195  */
        /* JADX WARN: Code duplicated, block: B:63:0x01a6  */
        /* JADX WARN: Code duplicated, block: B:65:0x01be  */
        /* JADX WARN: Code duplicated, block: B:68:0x01ef A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:72:0x01f7  */
        /* JADX WARN: Code duplicated, block: B:75:0x020a  */
        /* JADX WARN: Code duplicated, block: B:78:0x0224 A[RETURN] */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE;
            androidx.compose.ui.input.pointer.c cVar;
            w wVar;
            long jC;
            Ref.ObjectRef objectRef;
            Object objE0;
            androidx.compose.ui.input.pointer.c cVar2;
            w wVar2;
            Ref.ObjectRef objectRef2;
            androidx.compose.ui.input.pointer.c cVar3;
            Function1<y.g, Unit> function1;
            T t11;
            T t12;
            T t13;
            Object objF;
            androidx.compose.ui.input.pointer.c cVar4;
            Function1<y.g, Unit> function2;
            w wVar3;
            w wVar4;
            androidx.compose.ui.input.pointer.c cVar5;
            Ref.ObjectRef objectRef3;
            AnonymousClass9 anonymousClass9;
            Function1<y.g, Unit> function3;
            Function1<y.g, Unit> function4;
            Function1<y.g, Unit> function5;
            Object objF2 = IntrinsicsKt.f();
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    androidx.compose.ui.input.pointer.c cVar6 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    this.L$0 = cVar6;
                    this.label = 1;
                    objE = TapGestureDetectorKt.e(cVar6, false, null, this, 3, null);
                    if (objE == objF2) {
                        return objF2;
                    }
                    cVar = cVar6;
                    wVar = (w) objE;
                    wVar.a();
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00311(this.$pressScope, null), 3, null);
                    if (this.$onPress != TapGestureDetectorKt.f2706a) {
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$onPress, this.$pressScope, wVar, null), 3, null);
                    }
                    if (this.$onLongPress != null) {
                        jC = cVar.getViewConfiguration().c();
                    } else {
                        jC = 4611686018427387903L;
                    }
                    objectRef = new Ref.ObjectRef();
                    try {
                        AnonymousClass3 anonymousClass3 = new AnonymousClass3(null);
                        this.L$0 = cVar;
                        this.L$1 = wVar;
                        this.L$2 = objectRef;
                        this.L$3 = objectRef;
                        this.J$0 = jC;
                        this.label = 2;
                        objE0 = cVar.e0(jC, anonymousClass3, this);
                        if (objE0 == objF2) {
                            return objF2;
                        }
                        cVar2 = cVar;
                        wVar2 = wVar;
                        objectRef2 = objectRef;
                        t11 = objE0;
                        try {
                            objectRef.element = t11;
                            t12 = objectRef2.element;
                            if (t12 == 0) {
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass4(this.$pressScope, null), 3, null);
                            } else {
                                ((w) t12).a();
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass5(this.$pressScope, null), 3, null);
                            }
                            break;
                        } catch (PointerEventTimeoutCancellationException unused) {
                            objectRef = objectRef2;
                            wVar = wVar2;
                            cVar3 = cVar2;
                            function1 = this.$onLongPress;
                            if (function1 != null) {
                                function1.invoke(y.g.d(wVar.h()));
                            }
                            this.L$0 = cVar3;
                            this.L$1 = objectRef;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jC;
                            this.label = 3;
                            if (TapGestureDetectorKt.g(cVar3, this) == objF2) {
                                return objF2;
                            }
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass6(this.$pressScope, null), 3, null);
                            objectRef2 = objectRef;
                            cVar2 = cVar3;
                        }
                        t13 = objectRef2.element;
                        if (t13 != 0) {
                            if (this.$onDoubleTap == null) {
                                function2 = this.$onTap;
                                if (function2 != null) {
                                    function2.invoke(y.g.d(((w) t13).h()));
                                }
                            } else {
                                this.L$0 = cVar2;
                                this.L$1 = objectRef2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jC;
                                this.label = 4;
                                objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                                if (objF == objF2) {
                                    return objF2;
                                }
                                cVar4 = cVar2;
                                wVar3 = (w) objF;
                                if (wVar3 == null) {
                                    function3 = this.$onTap;
                                    if (function3 != null) {
                                        function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                    }
                                } else {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                    if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                    }
                                    try {
                                        anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                        this.L$0 = cVar4;
                                        this.L$1 = objectRef2;
                                        this.L$2 = wVar3;
                                        this.label = 5;
                                        if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                            return objF2;
                                        }
                                    } catch (PointerEventTimeoutCancellationException unused2) {
                                        wVar4 = wVar3;
                                        cVar5 = cVar4;
                                        objectRef3 = objectRef2;
                                        function4 = this.$onTap;
                                        if (function4 != null) {
                                            function4.invoke(y.g.d(((w) objectRef3.element).h()));
                                        }
                                        function5 = this.$onLongPress;
                                        if (function5 != null) {
                                            function5.invoke(y.g.d(wVar4.h()));
                                        }
                                        this.L$0 = null;
                                        this.L$1 = null;
                                        this.L$2 = null;
                                        this.label = 6;
                                        if (TapGestureDetectorKt.g(cVar5, this) == objF2) {
                                            return objF2;
                                        }
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass10(this.$pressScope, null), 3, null);
                                    }
                                }
                            }
                        }
                        return Unit.f67061a;
                    } catch (PointerEventTimeoutCancellationException unused3) {
                        cVar3 = cVar;
                        function1 = this.$onLongPress;
                        if (function1 != null) {
                            function1.invoke(y.g.d(wVar.h()));
                        }
                        this.L$0 = cVar3;
                        this.L$1 = objectRef;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.J$0 = jC;
                        this.label = 3;
                        if (TapGestureDetectorKt.g(cVar3, this) == objF2) {
                            return objF2;
                        }
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass6(this.$pressScope, null), 3, null);
                        objectRef2 = objectRef;
                        cVar2 = cVar3;
                        t13 = objectRef2.element;
                        if (t13 != 0) {
                            if (this.$onDoubleTap == null) {
                                function2 = this.$onTap;
                                if (function2 != null) {
                                    function2.invoke(y.g.d(((w) t13).h()));
                                }
                            } else {
                                this.L$0 = cVar2;
                                this.L$1 = objectRef2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jC;
                                this.label = 4;
                                objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                                if (objF == objF2) {
                                    return objF2;
                                }
                                cVar4 = cVar2;
                                wVar3 = (w) objF;
                                if (wVar3 == null) {
                                    function3 = this.$onTap;
                                    if (function3 != null) {
                                        function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                    }
                                } else {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                    if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                    }
                                    anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                    this.L$0 = cVar4;
                                    this.L$1 = objectRef2;
                                    this.L$2 = wVar3;
                                    this.label = 5;
                                    if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                        return objF2;
                                    }
                                }
                            }
                        }
                        return Unit.f67061a;
                    }
                case 1:
                    androidx.compose.ui.input.pointer.c cVar7 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar7;
                    objE = obj;
                    wVar = (w) objE;
                    wVar.a();
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00311(this.$pressScope, null), 3, null);
                    if (this.$onPress != TapGestureDetectorKt.f2706a) {
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$onPress, this.$pressScope, wVar, null), 3, null);
                    }
                    if (this.$onLongPress != null) {
                        jC = cVar.getViewConfiguration().c();
                    } else {
                        jC = 4611686018427387903L;
                    }
                    objectRef = new Ref.ObjectRef();
                    AnonymousClass3 anonymousClass4 = new AnonymousClass3(null);
                    this.L$0 = cVar;
                    this.L$1 = wVar;
                    this.L$2 = objectRef;
                    this.L$3 = objectRef;
                    this.J$0 = jC;
                    this.label = 2;
                    objE0 = cVar.e0(jC, anonymousClass4, this);
                    if (objE0 == objF2) {
                        return objF2;
                    }
                    cVar2 = cVar;
                    wVar2 = wVar;
                    objectRef2 = objectRef;
                    t11 = objE0;
                    objectRef.element = t11;
                    t12 = objectRef2.element;
                    if (t12 == 0) {
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass4(this.$pressScope, null), 3, null);
                    } else {
                        ((w) t12).a();
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass5(this.$pressScope, null), 3, null);
                    }
                    t13 = objectRef2.element;
                    if (t13 != 0) {
                        if (this.$onDoubleTap == null) {
                            function2 = this.$onTap;
                            if (function2 != null) {
                                function2.invoke(y.g.d(((w) t13).h()));
                            }
                        } else {
                            this.L$0 = cVar2;
                            this.L$1 = objectRef2;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jC;
                            this.label = 4;
                            objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                            if (objF == objF2) {
                                return objF2;
                            }
                            cVar4 = cVar2;
                            wVar3 = (w) objF;
                            if (wVar3 == null) {
                                function3 = this.$onTap;
                                if (function3 != null) {
                                    function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                }
                            } else {
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                }
                                anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                this.L$0 = cVar4;
                                this.L$1 = objectRef2;
                                this.L$2 = wVar3;
                                this.label = 5;
                                if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                    return objF2;
                                }
                            }
                        }
                    }
                    return Unit.f67061a;
                case 2:
                    jC = this.J$0;
                    objectRef = (Ref.ObjectRef) this.L$3;
                    Ref.ObjectRef objectRef4 = (Ref.ObjectRef) this.L$2;
                    wVar = (w) this.L$1;
                    cVar = (androidx.compose.ui.input.pointer.c) this.L$0;
                    try {
                        ResultKt.b(obj);
                        cVar2 = cVar;
                        wVar2 = wVar;
                        objectRef2 = objectRef4;
                        t11 = obj;
                        objectRef.element = t11;
                        t12 = objectRef2.element;
                        if (t12 == 0) {
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass4(this.$pressScope, null), 3, null);
                        } else {
                            ((w) t12).a();
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass5(this.$pressScope, null), 3, null);
                        }
                        break;
                    } catch (PointerEventTimeoutCancellationException unused4) {
                        objectRef = objectRef4;
                        cVar3 = cVar;
                        function1 = this.$onLongPress;
                        if (function1 != null) {
                            function1.invoke(y.g.d(wVar.h()));
                        }
                        this.L$0 = cVar3;
                        this.L$1 = objectRef;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.J$0 = jC;
                        this.label = 3;
                        if (TapGestureDetectorKt.g(cVar3, this) == objF2) {
                            return objF2;
                        }
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass6(this.$pressScope, null), 3, null);
                        objectRef2 = objectRef;
                        cVar2 = cVar3;
                        t13 = objectRef2.element;
                        if (t13 != 0) {
                            if (this.$onDoubleTap == null) {
                                function2 = this.$onTap;
                                if (function2 != null) {
                                    function2.invoke(y.g.d(((w) t13).h()));
                                }
                            } else {
                                this.L$0 = cVar2;
                                this.L$1 = objectRef2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jC;
                                this.label = 4;
                                objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                                if (objF == objF2) {
                                    return objF2;
                                }
                                cVar4 = cVar2;
                                wVar3 = (w) objF;
                                if (wVar3 == null) {
                                    function3 = this.$onTap;
                                    if (function3 != null) {
                                        function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                    }
                                } else {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                    if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                    }
                                    anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                    this.L$0 = cVar4;
                                    this.L$1 = objectRef2;
                                    this.L$2 = wVar3;
                                    this.label = 5;
                                    if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                        return objF2;
                                    }
                                }
                            }
                        }
                        return Unit.f67061a;
                    }
                    t13 = objectRef2.element;
                    if (t13 != 0) {
                        if (this.$onDoubleTap == null) {
                            function2 = this.$onTap;
                            if (function2 != null) {
                                function2.invoke(y.g.d(((w) t13).h()));
                            }
                        } else {
                            this.L$0 = cVar2;
                            this.L$1 = objectRef2;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jC;
                            this.label = 4;
                            objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                            if (objF == objF2) {
                                return objF2;
                            }
                            cVar4 = cVar2;
                            wVar3 = (w) objF;
                            if (wVar3 == null) {
                                function3 = this.$onTap;
                                if (function3 != null) {
                                    function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                }
                            } else {
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                }
                                anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                this.L$0 = cVar4;
                                this.L$1 = objectRef2;
                                this.L$2 = wVar3;
                                this.label = 5;
                                if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                    return objF2;
                                }
                            }
                        }
                    }
                    return Unit.f67061a;
                case 3:
                    jC = this.J$0;
                    objectRef = (Ref.ObjectRef) this.L$1;
                    cVar3 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    ResultKt.b(obj);
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass6(this.$pressScope, null), 3, null);
                    objectRef2 = objectRef;
                    cVar2 = cVar3;
                    t13 = objectRef2.element;
                    if (t13 != 0) {
                        if (this.$onDoubleTap == null) {
                            function2 = this.$onTap;
                            if (function2 != null) {
                                function2.invoke(y.g.d(((w) t13).h()));
                            }
                        } else {
                            this.L$0 = cVar2;
                            this.L$1 = objectRef2;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jC;
                            this.label = 4;
                            objF = TapGestureDetectorKt.f(cVar2, (w) t13, this);
                            if (objF == objF2) {
                                return objF2;
                            }
                            cVar4 = cVar2;
                            wVar3 = (w) objF;
                            if (wVar3 == null) {
                                function3 = this.$onTap;
                                if (function3 != null) {
                                    function3.invoke(y.g.d(((w) objectRef2.element).h()));
                                }
                            } else {
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                                if (this.$onPress != TapGestureDetectorKt.f2706a) {
                                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                                }
                                anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                                this.L$0 = cVar4;
                                this.L$1 = objectRef2;
                                this.L$2 = wVar3;
                                this.label = 5;
                                if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                                    return objF2;
                                }
                            }
                        }
                    }
                    return Unit.f67061a;
                case 4:
                    jC = this.J$0;
                    Ref.ObjectRef objectRef5 = (Ref.ObjectRef) this.L$1;
                    cVar4 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    ResultKt.b(obj);
                    objectRef2 = objectRef5;
                    objF = obj;
                    wVar3 = (w) objF;
                    if (wVar3 == null) {
                        function3 = this.$onTap;
                        if (function3 != null) {
                            function3.invoke(y.g.d(((w) objectRef2.element).h()));
                        }
                    } else {
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass7(this.$pressScope, null), 3, null);
                        if (this.$onPress != TapGestureDetectorKt.f2706a) {
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass8(this.$onPress, this.$pressScope, wVar3, null), 3, null);
                        }
                        anonymousClass9 = new AnonymousClass9(this.$$this$coroutineScope, this.$onDoubleTap, this.$onTap, objectRef2, this.$pressScope, null);
                        this.L$0 = cVar4;
                        this.L$1 = objectRef2;
                        this.L$2 = wVar3;
                        this.label = 5;
                        if (cVar4.e0(jC, anonymousClass9, this) == objF2) {
                            return objF2;
                        }
                    }
                    return Unit.f67061a;
                case 5:
                    wVar4 = (w) this.L$2;
                    objectRef3 = (Ref.ObjectRef) this.L$1;
                    cVar5 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    try {
                        ResultKt.b(obj);
                        break;
                    } catch (PointerEventTimeoutCancellationException unused5) {
                        function4 = this.$onTap;
                        if (function4 != null) {
                            function4.invoke(y.g.d(((w) objectRef3.element).h()));
                        }
                        function5 = this.$onLongPress;
                        if (function5 != null) {
                            function5.invoke(y.g.d(wVar4.h()));
                        }
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 6;
                        if (TapGestureDetectorKt.g(cVar5, this) == objF2) {
                            return objF2;
                        }
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass10(this.$pressScope, null), 3, null);
                    }
                    return Unit.f67061a;
                case 6:
                    ResultKt.b(obj);
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass10(this.$pressScope, null), 3, null);
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TapGestureDetectorKt$detectTapGestures$2(e0 e0Var, Function3<? super i, ? super y.g, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super y.g, Unit> function1, Function1<? super y.g, Unit> function2, Function1<? super y.g, Unit> function4, Continuation<? super TapGestureDetectorKt$detectTapGestures$2> continuation) {
        super(2, continuation);
        this.$this_detectTapGestures = e0Var;
        this.$onPress = function3;
        this.$onLongPress = function1;
        this.$onDoubleTap = function2;
        this.$onTap = function4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TapGestureDetectorKt$detectTapGestures$2 tapGestureDetectorKt$detectTapGestures$2 = new TapGestureDetectorKt$detectTapGestures$2(this.$this_detectTapGestures, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, continuation);
        tapGestureDetectorKt$detectTapGestures$2.L$0 = obj;
        return tapGestureDetectorKt$detectTapGestures$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TapGestureDetectorKt$detectTapGestures$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            PressGestureScopeImpl pressGestureScopeImpl = new PressGestureScopeImpl(this.$this_detectTapGestures);
            e0 e0Var = this.$this_detectTapGestures;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(n0Var, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, pressGestureScopeImpl, null);
            this.label = 1;
            if (ForEachGestureKt.c(e0Var, anonymousClass1, this) == objF) {
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
